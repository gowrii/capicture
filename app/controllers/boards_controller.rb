class BoardsController < ApplicationController
	before_filter :require_login, only: :secret

	def show
		@board = Board.find(params[:id])
		@game = @board.game
		@answer = Answer.new

		# @clue = Clue.find(params[:id])
		# @answer = @clue.answers.build

		@user = current_user
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
			render :show
		end
	end

	def destroy
	end

	private
	def board_params
		params.require(:board).permit(:name, :user_id, :game_id)
	end
end
