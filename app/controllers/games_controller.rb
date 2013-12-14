class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
		if current_user
			@board = @game.boards.build
		end
	end
end
