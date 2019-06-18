# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
App.destroy_all
UserApp.destroy_all
Review.destroy_all

ayush = User.create(username: "ash", password: "ash1", wallet: 100)
harriet = User.create(username: "harriet", password: "harriet", wallet: 1000)


freeletics = App.create(name: "Freeletics",image: "https://is3-ssl.mzstatic.com/image/thumb/Purple128/v4/81/55/8f/81558ff2-3a6d-7492-e960-1bf0a06e5b48/AppIcon-1x_U007emarketing-85-220-0-1.png/1024x1024bb.png", description:"One of the most downloaded exercise apps, with 36 Million user in over 160 countries." ,rating: 4.5 ,category: "Fitness",price: 5.00)
evernote = App.create(name: "Evernote", image: 'http://www.watchosicongallery.com/icons/evernote-2015-06-01/512.png', description: 'Evernote helps you focus on what matters most and have access to your information when you need it.', rating: 4.3,  category: "Productivity", price: 3.00)
uber = App.create(name: 'Uber', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Uber_App_Icon.svg/1024px-Uber_App_Icon.svg.png',  description: 'Uber is a ride sharing app for reliable transport. Whether ordering an Uber ride or getting around on a JUMP e-bike, stress-free travel is just a tap away.', rating: 4.6, category: "Travel", price: 7.00)
airbnb = App.create(name: 'Airbnb', image: 'https://metropolitan.fi/files/2018-05/air-bonobo.png', description: 'Be at home in the world. Find the best vacation home rentals and appartments.', rating: 4.8, category: "Travel", price: 5.00)
tinder = App.create(name: 'Tinder', image: 'https://assets.materialup.com/uploads/70f36a80-2a30-4e61-9c9d-ded18590e328/preview.jpg', description: "With 30 billion matches to date, Tinder is the world's most popular dating app for meeting new people.", rating: 3.6, category: "Lifestyle", price: 4.00)
spotify = App.create(name: 'Spotify', image: 'https://www.iosicongallery.com/icons/spotify-music-2015-07-30/512.png', description: 'Spotify is the best way to listen to music or podcasts, free on mobile or tablet.', rating: 4.7,  category: "Music", price: 7.00)
citymapper = App.create(name: "Citymapper", image: "https://www.cruisinaltitude.com/wp-content/uploads/2016/03/CityMapperlogo.jpg", description: 'Real-time departures. Transport maps. Line status and real-time disruption alerts. Uber integration. Live cycle hire info. Constant updates. Everything you need -- and may not even realise you need -- to manage your life in the city.', rating: 4.3, category: "Navigation", price: 6.00)

userapp1 = UserApp.create(user: ayush, app: freeletics)
userapp2 = UserApp.create(user: ayush, app: uber)
userapp3 = UserApp.create(user: harriet, app: airbnb)
userapp4 = UserApp.create(user: harriet, app: spotify)
userapp5 = UserApp.create(user: harriet, app: evernote)

review1 = Review.create(comment: "Shit", app: freeletics, user_id: harriet.id)
review2 = Review.create(comment: "I want my money back!", app: freeletics, user_id: ayush.id)
review3 = Review.create(comment: "Worse than Freeletics!!", app: evernote, user_id: ayush.id)
review4 = Review.create(comment: "Drivers too chatty.", app: uber, user_id: harriet.id )
review5 = Review.create(comment: "Haven't taken a walk in months! This app's AMAZINNGGGGGG!!!", app: uber, user_id: ayush.id )
review6 = Review.create(comment: "Didn't speak English.", app: airbnb, user_id: harriet.id)
review7 = Review.create(comment: "No British telly.", app: airbnb, user_id: ayush.id)
review8 = Review.create(comment: "Full of right fitties.", app: tinder, user_id: harriet.id)
review9 = Review.create(comment: "Could listen to Taylor Swift Alllllllll Dayyyyyyy", app: spotify, user_id: ayush.id)
review10 = Review.create(comment: "Got lost", app: citymapper, user_id: harriet.id)
review11 = Review.create(comment: "Missed the bus", app: citymapper, user_id: ayush.id)
review12 = Review.create(comment: "Got bare fit.", app: freeletics, user_id: harriet.id)