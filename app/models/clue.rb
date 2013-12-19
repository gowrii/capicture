class Clue < ActiveRecord::Base
	belongs_to :game
	has_many :answers

	def answered?(user)
		self.answers.where(user_id: user.id).present?
	end

 def meter
      total_clues = game.clues.count
      meter = (clues.count / total_clues) * 100
    end
    
end
