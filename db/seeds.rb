# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#clean the DB
Flat.destroy_all

puts "#{Flat.all.count} flat in the DB"

14.times do
  Flat.create!(
    name: Faker::DcComics.title,
    address: Faker::Address.full_address,
    description: Faker::Quotes::Rajnikanth.joke,
    price_per_night: rand(50..250),
    number_of_guests: rand(1..10)
  )
end

puts "#{Flat.all.count} flats created"
