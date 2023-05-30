# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts 'cleaning the DB'
User.destroy_all
Monument.destroy_all

puts 'creating the new DB'

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
  )
end

puts "#{User.all.length} users created"

10.times do
  monu = Monument.create!(
    name: Faker::Mountain.name,
    picture: 'https://picsum.photos/750/300',
    price: rand(1_000..1_000_000),
    country: Faker::Address.country,
    city: Faker::Address.city,
    address_details: Faker::Address.street_address,
    user_id: rand(1..10),
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
    rate: rand(1..5)
  )
  file = URI.open(monu.picture)

  monu.photos.attach(io: file, filename: File.basename(monu.picture))
end

puts "#{Monument.all.length} monuments created"
