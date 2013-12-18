class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])

		# if you want to be able to make a new board directly here
		# @board = Board.new(:game_id => @game.id)
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(game_params)
		if @game.save
			redirect_to games_path
		else
			render :new
		end
	end

	private
	def game_params
		params.require(:game).permit(:start_time, :end_time, :theme, :title)
	end
end
