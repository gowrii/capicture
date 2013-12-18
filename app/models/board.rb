class Board < ActiveRecord::Base
	has_many :clues
	belongs_to :user
	belongs_to :game

  validates :user_id, uniqueness: { scope: :game_id, message: "You already created a board for this game." }
end