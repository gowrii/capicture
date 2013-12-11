class Clue < ActiveRecord::Base
	belongs_to :board
	has_many :answers
end
