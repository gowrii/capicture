class CluesController < ApplicationController
	before_filter :load_board	

	def create
		@clue = Clue.new
	end

	def show
		@clue = Clue.find(params[:id])
		@board = Board.find(parmas[:board_id])
	end

	private
	def load_board
		@board = Board.find(params[:board_id])
	end
end
