# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Player.delete_all
Sportcenter.delete_all
Field.delete_all
Event.delete_all
Participation.delete_all


user_1 = User.new( name: 'Jon', surname: 'Doe', email: 'jon@doe.com', password: '12341234')
user_1.save!(:validate => false)
user_2 = User.new( name: 'Tom', surname: 'Woe', email: 'tom@woe.com', password: '12341234')
user_2.save!(:validate => false)
user_3 = User.new( name: 'Ben', surname: 'Ten', email: 'ben@ten.com', password: '12341234')
user_3.save!(:validate => false)


player_1 = Player.create(name: "Dennis", surname: "Berghamp", email: "dennis@dennis.com")
player_2 = Player.create(name: "Tony", surname: "Adams", email: "tony@adams.com")
player_3 = Player.create(name: "Robert", surname: "Pires", email: "robert@pires.com")
player_4 = Player.create(name: "Thierry", surname: "Henry", email: "thierry@henry.com")
player_5 = Player.create(name: "Jack", surname: "Wilsher", email: "jack@wilsher.com")

emirates = Sportcenter.create(name: "Emirates Stadium", adress: "London", phone:"123456789")
santiago = Sportcenter.create(name: "Santiago Bernabeu", adress: "Madrit", phone:"987654321")

field_emirates_1 = Field.create(name: "Big grass", sportcenter_id: emirates.id)
field_emirates_2 = Field.create(name: "Small grass", sportcenter_id: emirates.id)
field_santiago_1 = Field.create(name: "Big grass", sportcenter_id: santiago.id)
field_santiago_2 = Field.create(name: "Small grass", sportcenter_id: santiago.id)

event_1 = Event.create( game_name:"Derby",
                        user_id: user_1.id,
                        field_id: field_emirates_1.id,
                        date_take_place: '2014-09-06')
event_1.players << user_1.players






