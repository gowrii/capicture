class BoardsController < ApplicationController
	before_filter :require_login, only: :secret

	def show
		@board = Board.find(params[:id])
		@game = @board.game

		@answer = Answer.new
		@user = @board.user

		@next_clue = @game.uncompleted_clues(current_user).first
	end

	def new
		@game = Game.find(params[:game_id])
		@board = @game.boards.build
	end

	def create
		@board = Board.new( board_params )
		@game = Game.find(params[:game_id])
		@board.user_id = current_user.id

		if @board.save
			redirect_to board_path(@board), notice: "Board Created!"
		else
			render :new
		end
	end

	def destroy
	end

	private
	def board_params
		params.require(:board).permit(:name, :user_id, :game_id)
	end
end
