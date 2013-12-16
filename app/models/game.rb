class Game < ActiveRecord::Base
	has_many :users, :through => :boards
  has_many :boards
	
  has_many :clues

  def completed_clues
    clues = []
    users.answers.each do |answer|
    if self == answer.clue.game
      clues << answer.clue
    end
  end
end
