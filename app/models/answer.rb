class Answer < ActiveRecord::Base
	# attr_accessible :clue_id, :photo
	belongs_to :user
	belongs_to :clue
	mount_uploader :photo, PhotoUploader
end