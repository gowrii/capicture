class CluesController < ApplicationController
	before_filter :load_game	

	def new
		@clue = Clue.new
	end

	def create
		@clue = @game.clues.build(clue_params)

		if @clue.save
			redirect_to games_url
		else
			render :new
		end
	end

	def show
		@clue = Clue.find(params[:id])
		@board = Board.find(parmas[:board_id])
	end

	private
	def clue_params
		params.require(:clue).permit(:question, :game_id)
	end

	def load_game
		@game = Game.find(params[:game_id])
	end
end
