# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create!(
	theme: "default",
)

Board.create!(
	name: "user's default",
	game_id: 1
)

Clue.create!(
	question: ["find one noodle!", "find a cat!", "find an elephant!", "find an eyelash!"],
	board_id: 1
)