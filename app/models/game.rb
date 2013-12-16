class Game < ActiveRecord::Base
	has_many :users, :through => :boards
  has_many :boards
	
  has_many :clues
end
