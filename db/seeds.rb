# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Monument.destroy_all

puts "Creating new data..."
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
  )
end

10.times do
  Monument.create!(
    name: Faker::Mountain.name,
    picture: 'https://picsum.photos/200/300',
    price: rand(1_000..1_000_000),
    address: Faker::Address.full_address,
    user_id: rand(1..10)
  )
end

puts "Finish!"
