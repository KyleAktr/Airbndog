# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
5.times do
    city = City.create!(name: Faker::Nation.capital_city)
end

10.times do
    dog = Dog.create!(first_name: Faker::Movies::HarryPotter.character, city_id: rand(1..5))
end

10.times do
    dogsitter = Dogsitter.create!(first_name: Faker::Games::StreetFighter.character, age: rand(18..45), city_id: rand(1..5))
end

10.times do
    stroll = Stroll.create!(dog_id: rand(1..10), dogsitter_id: rand(1..10), city_id: rand(1..5))
end

10.times do
    dog_stroll = DogStroll.create!(dog_id: rand(1..10), stroll_id: rand(1..10))
end