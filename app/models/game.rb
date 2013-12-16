class Game < ActiveRecord::Base
	has_many :boards
	has_many :users
  has_many :clues
end
