# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Board.create!({title: "Board 1", user_id: 2})
Board.create!({title: "Board 2", user_id: 2})
Board.create!({title: "Board 3", user_id: 2})
Board.create!({title: "Board 4", user_id: 2})
Board.create!({title: "Board 5", user_id: 2})
Board.create!({title: "Board 6", user_id: 2})
Board.create!({title: "Funny Board", user_id: 1})
Board.create!({title: "Lame Board", user_id: 1})
Board.create!({title: "Happy Board", user_id: 1})
Board.create!({title: "Sad Board", user_id: 1})

List.create!({title: "List 1", ord: 1, board_id: 1})
List.create!({title: "List 2", ord: 2, board_id: 1})
List.create!({title: "List 3", ord: 3, board_id: 1})
List.create!({title: "List 4", ord: 4, board_id: 1})

List.create!({title: "List 1", ord: 1, board_id: 2})
List.create!({title: "List 2", ord: 2, board_id: 2})
List.create!({title: "List 3", ord: 3, board_id: 2})
List.create!({title: "List 4", ord: 4, board_id: 2})

List.create!({title: "List 1", ord: 1, board_id: 3})
List.create!({title: "List 2", ord: 2, board_id: 3})
List.create!({title: "List 3", ord: 3, board_id: 3})
List.create!({title: "List 4", ord: 4, board_id: 3})

List.create!({title: "List 1", ord: 1, board_id: 4})
List.create!({title: "List 2", ord: 2, board_id: 4})
List.create!({title: "List 3", ord: 3, board_id: 4})
List.create!({title: "List 4", ord: 4, board_id: 4})

List.create!({title: "List 1", ord: 1, board_id: 5})
List.create!({title: "List 2", ord: 2, board_id: 5})
List.create!({title: "List 3", ord: 3, board_id: 5})
List.create!({title: "List 4", ord: 4, board_id: 5})
