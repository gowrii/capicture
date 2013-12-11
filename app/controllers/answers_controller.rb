class AnswersController < ApplicationController
	before_filter :load_clue

	def new
		@answer = Answer.new
	end

	def create
		@answer = Answer.new
		
		respond_to do |format|
			if @answer.save
				format.html { redirect_to board_path(@board) }
				format.js {}
			else
				format.html { render :new }
				format.js {}
			end
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
