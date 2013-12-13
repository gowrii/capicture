class Clue < ActiveRecord::Base
	belongs_to :board
	has_many :answers

	def answered?(user)
		self.answers.where(user_id: user.id).present?
	end
end
