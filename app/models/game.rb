class Game < ActiveRecord::Base
	has_many :boards
	has_many :users
end
