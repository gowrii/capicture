class AnswersController < ApplicationController
	def new
		@answer = Answer.new
	end

	def create
		@answer = @clue.answers.build(answer_params)
		
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
end
