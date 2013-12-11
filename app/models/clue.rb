class Clue < ActiveRecord::Base
	belongs_to :board
	has_one :answer
end
