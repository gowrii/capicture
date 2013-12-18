class Board < ActiveRecord::Base
	has_many :clues
	belongs_to :user
	belongs_to :game

  validates_uniqueness_of :game_id, on: :create
end