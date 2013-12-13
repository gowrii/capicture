class Board < ActiveRecord::Base
	has_many :clues
	belongs_to :user
	belongs_to :game
end
