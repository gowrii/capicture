class Game < ActiveRecord::Base
	has_many :users, :through => :boards
  has_many :boards
	
  has_many :clues

  def completed_clues
    clues = []
    user = current_user
    user.answers.each do |answer|
      # for all answers created by current user,
      if self == answer.clue.game
        # if the answer's game is this game
        clues << answer.clue
        # the answer's clue is inserted into array
        return clues
      end
    end
  end

  def user_answered
    self.completed_clues.each do |c|
      c.answer
      # returns every answer for clues answered for this game
    end
  end
end
