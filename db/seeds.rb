# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.create(name: "Cocotte", description: "Cocotte is a small French restaurant on Hyde Street in Nob Hill that we probably walked by 30 times before we noticed it. And if we randomly moved to France, it’s the kind of place we can imagine ourselves living above and stopping into at least once a week.", casual: false, food: true, drink: true, event: false, Monday: true, Tuesday: true, Wednesday: true, Thursday: true, Friday: true, Saturday: true, Sunday: true, area: 'Nob Hill', img_url: 'https://infatuation.imgix.net/media/images/reviews/cocotte/banners/1527895103.86.jpg?auto=format&h=840&w=1336', location: '37.79483210953892 -122.41830347270519')
# 100.times { |i|
#     Reservation.create(user_id: User.all.sample.id, restaurant_id: Restaurant.all.sample.id)
# }
