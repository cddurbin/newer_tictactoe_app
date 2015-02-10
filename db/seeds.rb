# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.delete_all
User.delete_all
Move.delete_all

u1 = User.create!(email: 'bob@bob.com', password: 'password')
u2 = User.create!(email: 'bev@bev.com', password: 'password')

g1 = Game.create!(winner: 'bob@bob.com', completed: true, player1_id: u1.id, player2_id: u2.id)

m1 = Move.create!(mark: 'x', position: 0, game_id: g1.id, user_id: u1.id)
m2 = Move.create!(mark: 'o', position: 4, game_id: g1.id, user_id: u2.id)
m3 = Move.create!(mark: 'x', position: 1, game_id: g1.id, user_id: u1.id)
m4 = Move.create!(mark: 'o', position: 5, game_id: g1.id, user_id: u2.id)
m5 = Move.create!(mark: 'x', position: 7, game_id: g1.id, user_id: u1.id)
m6 = Move.create!(mark: 'o', position: 6, game_id: g1.id, user_id: u2.id)
m7 = Move.create!(mark: 'x', position: 2, game_id: g1.id, user_id: u1.id)