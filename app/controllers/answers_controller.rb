class AnswersController < ApplicationController
	before_filter :load_clue

	def show
		@answer = Answer.find(params[:id])
		@clue = Clue.find_by_id(params[:clue_id])
	end

	def new
		@answer = Answer.new
	end

	def create
		@answer = @clue.answers.build(answer_params)
		@answer.user = current_user
		
			if @answer.save
				redirect_to board_path(current_user.boards.where(:game_id => @clue.game.id))
			else
				render :new 
			end
	end

	private

	def answer_params
		params.require(:answer).permit(:input, :clue_id, :user_id)
	end

	def load_clue
		@clue = Clue.find(params[:clue_id])
	end
end
