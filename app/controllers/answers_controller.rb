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
		@answer = @clue.build_answer(answer_params)

		respond_to do |format|
			if @answer.save
				format.html { redirect_to board_path(@clue.board) }
				format.js { render :json => { input: @answer.input} }
			else
				format.html { render :new }
				format.js {}
			end
		end
	end

	private
	def answer_params
		params.require(:answer).permit(:input, :clue_id)
	end

	def load_clue
		@clue = Clue.find(params[:clue_id])
	end
end
