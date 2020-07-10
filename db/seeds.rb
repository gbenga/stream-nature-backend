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
l1 = Location.create(city: 'Bristol', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://www.wallpaperbetter.com/wallpaper/316/681/279/bristol-clifton-suspension-bridge-1080P-wallpaper.jpg", bio: "South-West UK" )
l2 = Location.create(city: 'London', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://goodietravel.com/wp-content/uploads/2018/10/St.-James-Park.png", bio: "The city that never sleeps" )
l3 = Location.create(city: 'Exeter', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://rayfarmexeter.com/media/7186/outdoorexeter.jpg?mode=crop&width=1200&height=630", bio: "#BleedGreen" )
l4 = Location.create(city: 'Birmingham', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://media-cdn.tripadvisor.com/media/photo-s/04/72/7e/2e/river-in-birmingham-nature.jpg", bio: "Midlands" )
l5 = Location.create(city: 'Manchester', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://i2-prod.manchestereveningnews.co.uk/incoming/article6507109.ece/ALTERNATES/s615/SXPReddishValeC03292520242726.jpg", bio: "Bees bees bees" )
l6 = Location.create(city: 'Bornemouth', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://thumbs.dreamstime.com/b/lower-gardens-bournemouth-town-centre-united-kingdom-play-host-to-many-events-attractions-48909734.jpg", bio: "Wow Bournemouth is cool" )
l7 = Location.create(city: 'Skye', country: 'United Kingdom', longitude: 11111, latitude: 22222, avatar: "https://i.ytimg.com/vi/2LL_-vROqG4/maxresdefault.jpg", bio: "The Isle of Wonder" )

u1 = User.create(name: "Gbenga", username: "gbengaaa", password: "passGb", bio: "that guy", followers: 25, avatar: "https://www.out.com/sites/out.com/files/styles/vertical_gallery_desktop_1x/public/hbomax_020620_legend_zd_00383.jpg?itok=6kuTao9J&timestamp=1589587361")
u2 = User.create(name: "Dorothy", username: "dorothy", password: "passDj", bio: "that girl", followers: 30, avatar: "https://vignette.wikia.nocookie.net/p__/images/9/9f/Lana_kane.jpg/revision/latest/scale-to-width-down/340?cb=20130325021411&path-prefix=protagonist")
u3 = User.create(name: "Dan", username: "dan", password: "passDan", bio: "Check this out guys!", followers: 2, avatar: "https://www.wikihow.com/images/f/f5/Clean-An-Oscillating-Round-Fan-Step-11.jpg")
u4 = User.create(name: "Anderson", username: "andy", password: "passAnd", bio: "no longer that guy", followers: 2050, avatar: "https://youareatoy.files.wordpress.com/2014/12/toy-story3-disneyscreencaps-com-1255.jpg")

e1 = Event.create(name: "Northern Lights", time: 0010, likes: 0, avatar: "https://4.bp.blogspot.com/-3GWz1DdteUU/US7scXwE9vI/AAAAAAAANvo/6wl5kwpxRNE/s1600/Notehn+Lights.jpg", user_id: u1.id, location_id: l4.id)
e2 = Event.create(name: " A nice sunset", time: 1900, likes: 3, avatar: "https://seanscottphotography.com.au/wp-content/uploads/2018/11/2823.jpg", user_id: u2.id, location_id: l1.id)
e3 = Event.create(name: " A nice sunrise", time: 0530, likes: 19, avatar: "https://freeimagesetc.files.wordpress.com/2010/12/img_9660.jpg", user_id: u3.id, location_id: l2.id)
e4 = Event.create(name: " Look at this nice sunset", time: 2030, likes: 203, avatar: "https://pmimaui.com/wp-content/uploads/2018/01/GettyImages-625006074-e1515708812857.jpg", user_id: u1.id, location_id: l2.id)
e5 = Event.create(name: " Volcanic Eruption", time: 1500, likes: 4444, avatar: "https://madmonkeyhostels.com/wp-content/uploads/2016/08/Kawasan.Falls_.original.5345.jpg", user_id: u2.id, location_id: l5.id)
e6 = Event.create(name: " WATERFALL", time: 1120, likes: 32, avatar: "https://madmonkeyhostels.com/wp-content/uploads/2016/08/Kawasan.Falls_.original.5345.jpg", user_id: u3.id, location_id: l4.id)
e7 = Event.create(name: "Night time in the park", time: 2135, likes: 4324, avatar: "https://wallup.net/wp-content/uploads/2016/04/06/354405-nature-night-long_exposure-park-Uzbekistan.jpg", user_id: u2.id, location_id: l7.id)
e8 = Event.create(name: " I love the beach", time: 1430, likes: 33, avatar: "https://media.cntraveler.com/photos/5970dfb028a23949449f04c4/master/pass/Maui-SecretBeach-16x9-GettyImages-127067237.jpg", user_id: u2.id, location_id: l6.id)
e9 = Event.create(name: "Check out these waves", time: 1540, likes: 908, avatar: "https://img.redbull.com/images/c_fill,w_1500,h_1000,g_auto/f_auto,q_auto/redbullcom/2015/02/28/1331708595031_2/big-wave-surfer-mark-mathews-surfs-botany-bay-near-sydney.jpg", user_id: u1.id, location_id: l5.id)
e10 = Event.create(name: " My hometown", time: 1845, likes: 5, avatar: "https://c2.staticflickr.com/4/3701/9448025530_e14c1eaed7_b.jpg", user_id: u1.id, location_id: l4.id)
e11 = Event.create(name: " It's raining", time: 1130, likes: 3, avatar: "https://wallpapercave.com/wp/9EjbNTw.jpg", user_id: u4.id, location_id: l3.id)
e12 = Event.create(name: "Great weather", time: 1020, likes: 88, avatar: "https://i.ytimg.com/vi/BQxBh-Oen1w/maxresdefault.jpg", user_id: u3.id, location_id: l2.id)