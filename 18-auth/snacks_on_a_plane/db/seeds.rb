# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserSnack.destroy_all
Snack.destroy_all
User.destroy_all

puts "...creating snacks 🍿🍫"
food_profile = ["spicy", "sweet", "salty"]

20.times do
    Snack.create(name: Faker::Food.ingredient, brand: Faker::Superhero.prefix, flavor_profile: food_profile.sample)
end

puts "...creating users 💁‍♀️💁‍♂️"
20.times do
    User.create(name: Faker::Movies::HarryPotter.character, password: "password1234", motto: Faker::Movies::HarryPotter.quote, img_url: Faker::LoremFlickr.image)
end

puts "...creating reviews 📝"
50.times do
    UserSnack.create(user_id: User.all.sample.id, snack_id: Snack.all.sample.id, review: Faker::Movie.quote, rating: rand(1..10))
end