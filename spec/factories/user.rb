FactoryGirl.define do
	factory :user do
		email "user@user.com"
		crypted_password "yawn"
    password "yawn"
	end
end