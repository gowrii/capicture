class Board < ActiveRecord::Base
	has_many :clues
	belongs_to :user
	belongs_to :game

  validates_uniqueness_of :user_id, on: :create
end