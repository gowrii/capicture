class AnswersController < ApplicationController
	before_filter :load_clue

	def new
		@answer = Answer.new
	end

	def create
		@answer = Answer.new
		
		if @answer.save
			redirect_to board_path(@board)
		else
			render :new
		end
	end

	private
	def answer_params
		params.require(:answer).permit(:input)
	end

	def load_clue
		@clue = Clue.find(params[:clue_id])
	end
end
