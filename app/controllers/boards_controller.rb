class BoardsController < ApplicationController
	before_filter :require_login, only: :secret

	def show
		@board = Board.find(params[:id])
		@game = @board.game

		@answer = Answer.new

		# how do i make an instance variable which represents the "next" clue?
		# HINT: I only want one clue.
		@next_clue = @game.uncompleted_clues(current_user).first

		# @clue = Clue.find(params[:id])
		# @answer = @clue.answers.build

	end

	def new
		@game = Game.find(params[:game_id])
		@board = @game.boards.build
	end

	def create
		@game = Game.find(params[:game_id])
		@board = @game.boards.new board_params
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
