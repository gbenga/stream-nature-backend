# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
l1 = Location.create(city: 'Bristol', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: 'link here', bio: "Will write a bio later" )
l2 = Location.create(city: 'London', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: 'link here', bio: "Will write a bio later" )
l3 = Location.create(city: 'Exeter', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: 'link here', bio: "Will write a bio later" )
l4 = Location.create(city: 'Birmingham', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: 'link here', bio: "Will write a bio later" )
l5 = Location.create(city: 'Manchester', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: 'link here', bio: "Will write a bio later" )

User.destroy_all
u1 = User.create(name: "Gbenga", username: "gbengaaa", password_digest: "pasword here", bio: "that guy", followers: 25, avatar: "link here")
u2 = User.create(name: "Dorothy", username: "dorothy", password_digest: "pasword here", bio: "that girl", followers: 30, avatar: "link here")
u3 = User.create(name: "Dan", username: "dan", password_digest: "pasword here", bio: "that guy", followers: 2, avatar: "link here")
u4 = User.create(name: "Anderson", username: "andy", password_digest: "pasword here", bio: "that guy", followers: 2050, avatar: "link here")

Event.destroy_all
e1 = Event.create(name: "Northern Lights", time: 1010101, likes: 0, user_id: u1.id, location_id: l4.id)
e2 = Event.create(name: " A nice sunset", time: 1010101, likes: 5, user_id: u2.id, location_id: l1.id)
e3 = Event.create(name: " A nice sunrise", time: 1010101, likes: 5, user_id: u3.id, location_id: l2.id)