class BoardsController < ApplicationController
	before_filter :require_login, only: :secret
	before_filter :load_game

	def show
		@board = Board.find(params[:id])
		@answer = Answer.new
		@answers = []
	end

	def new
		@board = @game.boards.build
	end

	def create
		@board = @game.boards.build(board_params)
		@board.user_id = current_user.id

		if @board.save
			redirect_to board_path(@board), notice: "Board Created!"
		else
			render :action => :show
		end
	end

	def destroy
	end

	private
	def board_params
		params.require(:board).permit(:name, :user_id, :game_id)
	end

	def load_game
		@game = Game.find(params[:game_id])
	end
end
