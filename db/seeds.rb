# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
Event.all.destroy_all
Location.all.destroy_all
l1 = Location.create(city: 'Bristol', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "", bio: "South-West UK" )
l2 = Location.create(city: 'London', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "", bio: "The city that never sleeps" )
l3 = Location.create(city: 'Exeter', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "", bio: "#BleedGreen" )
l4 = Location.create(city: 'Birmingham', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "", bio: "Midlands" )
l5 = Location.create(city: 'Manchester', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "", bio: "Bees bees bees" )

u1 = User.create(name: "Gbenga", username: "gbengaaa", password_digest: "pasword here", bio: "that guy", followers: 25, avatar: "https://www.out.com/sites/out.com/files/styles/vertical_gallery_desktop_1x/public/hbomax_020620_legend_zd_00383.jpg?itok=6kuTao9J&timestamp=1589587361")
u2 = User.create(name: "Dorothy", username: "dorothy", password_digest: "pasword here", bio: "that girl", followers: 30, avatar: "https://vignette.wikia.nocookie.net/p__/images/9/9f/Lana_kane.jpg/revision/latest/scale-to-width-down/340?cb=20130325021411&path-prefix=protagonist")
u3 = User.create(name: "Dan", username: "dan", password_digest: "pasword here", bio: "Check this out guys!", followers: 2, avatar: "")
u4 = User.create(name: "Anderson", username: "andy", password_digest: "pasword here", bio: "no longer that guy", followers: 2050, avatar: "")

e1 = Event.create(name: "Northern Lights", time: 1010101, likes: 0, user_id: u1.id, location_id: l4.id)
e2 = Event.create(name: " A nice sunset", time: 1010101, likes: 5, user_id: u2.id, location_id: l1.id)
e3 = Event.create(name: " A nice sunrise", time: 1010101, likes: 5, user_id: u3.id, location_id: l2.id)
e4 = Event.create(name: " Look at this nice sunset", time: 1010101, likes: 5, user_id: u1.id, location_id: l2.id)
e5 = Event.create(name: " Volcanic Eruption", time: 1010101, likes: 5, user_id: u2.id, location_id: l5.id)
e6 = Event.create(name: " WATERFALL", time: 1010101, likes: 5, user_id: u3.id, location_id: l4.id)