FactoryGirl.define do
	factory :game do
		start_time Time.zone.now
		end_time Time.zone.now + 5.hours
		theme "It be fun mon, do eet"
	end
end