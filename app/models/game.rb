class Game < ActiveRecord::Base
	has_many :users, :through => :boards
  has_many :boards
  has_many :clues

  def completed_clues( user )
    clues = []
    user.answers.each do |answer|
      # for all answers created by current user,
      if self == answer.clue.game
        # if the answer's game is this game
        clues << answer.clue
        # the answer's clue is inserted into array
      end
    end

    clues
  end

  def uncompleted_clues( user )
    clues - completed_clues(user)
  end

  def user_answered( user )
    completed_clue_ids = completed_clues(user).map(&:id)
    # array of clue ids that are completed by user    

    user_answers = Answer.where(:user_id => user.id).where(:clue_id => completed_clue_ids)
    
    user_answers
  end
end
