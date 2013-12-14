class User < ActiveRecord::Base
	has_many :boards
	has_many :answers

	authenticate_with_sorcery!

	validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
