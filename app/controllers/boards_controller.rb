class BoardsController < ApplicationController
	before_filter :require_login, only: :secret

	def show
		@board = Board.find(params[:id])
		@answer = Answer.new
		@answers = []
	end

	def new
		@board = Board.new
	end

	def create
		@board = @game.boards.build(board_params)
		if @board.save
			redirect_to board_path(@board)
		else
			render :new
		end
	end

	def destroy
	end

	private
	def board_params
		params.require(:board).permit(:name, :user_id)
	end
end
