# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create!(
	theme: "default",
	start_time: Time.now + 3.days,
	end_time: Time.now + 4.days
)

Game.create!(
	theme: "FANCY ONE",
	start_time: Time.now + 4.days,
	end_time: Time.now + 5.days
)

User.create!(
	email: "user@user.com",
	crypted_password: "password",
	password: "password"
)

Board.create!(
	name: "user's default",
	game_id: 1,
	user_id: 1
)

Board.create!(
	name: "board 2",
	game_id: 1,
	user_id: 1
)

Board.create!(
	name: "wacky",
	game_id: 1,
	user_id: 1
)

Board.create!(
	name: "wat wat",
	game_id: 2,
	user_id: 1
)

Board.create!(
	name: "toodles",
	game_id: 2,
	user_id: 1
)

Board.create!(
	name: "the other board",
	game_id: 2,
	user_id: 1
)

Clue.create!(
	question: "number one?",
	game_id: 1
)

Clue.create!(
	question: "number two?",
	game_id: 1
)

Clue.create!(
	question: "number three?",
	game_id: 1
)

Clue.create!(
	question: "number four?",
	game_id: 1
)

Clue.create!(
	question: "number one?",
	game_id: 2
)

Clue.create!(
	question: "number two?",
	game_id: 2
)

Clue.create!(
	question: "number three?",
	game_id: 2
)

Clue.create!(
	question: "number four?",
	game_id: 2
)