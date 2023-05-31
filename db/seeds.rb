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

# 10.times do
#   monu = Monument.create!(
#     name: Faker::Mountain.name,
#     picture: 'https://picsum.photos/750/300',
#     price: rand(1_000..1_000_000),
#     country: Faker::Address.country,
#     city: Faker::Address.city,
#     address_details: Faker::Address.street_address,
#     user_id: User.all.sample.id,
#     description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
#     rate: rand(1..5)
#   )
#   file = URI.open(monu.picture)

#   monu.photos.attach(io: file, filename: File.basename(monu.picture))
# end


monu = Monument.create!(
  name: "Great Pyramid of Giza",
  picture: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg",
  price: rand(1_000..1_000_000),
  country: "Egypt",
  city: "Giza",
  address_details: "Somewhere in the desert",
  user_id: User.all.sample.id,
  description: "The Great Pyramid of Giza is the largest Egyptian pyramid and the tomb of Fourth Dynasty pharaoh Khufu. Built in the early 26th century BC during a period of around 27 years, the pyramid is the oldest of the Seven Wonders of the Ancient World, and the only one to remain largely intact.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))


monu = Monument.create!(
  name: "Great wall of china",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/The_Great_Wall_of_China_at_Jinshanling-edit.jpg/2560px-The_Great_Wall_of_China_at_Jinshanling-edit.jpg",
  price: rand(1_000..1_000_000),
  country: "China",
  city: "Beijing",
  address_details: "China mountains",
  user_id: User.all.sample.id,
  description: "The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Taj Mahal",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Taj_Mahal%2C_Agra%2C_India_edit3.jpg/2560px-Taj_Mahal%2C_Agra%2C_India_edit3.jpg",
  price: rand(1_000..1_000_000),
  country: "India",
  city: "Uttar Pradesh",
  address_details: "Agra",
  user_id: User.all.sample.id,
  description: "An ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan (r. 1628–1658) to house the tomb of his favourite wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself. The tomb is the centrepiece of a 17-hectare (42-acre) complex, which includes a mosque and a guest house, and is set in formal gardens bounded on three sides by a crenellated wall.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Palace of Versailles",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Chateau_Versailles_Galerie_des_Glaces.jpg/2560px-Chateau_Versailles_Galerie_des_Glaces.jpg",
  price: rand(1_000..1_000_000),
  country: "France",
  city: "Versailles",
  address_details: "Fancy french gardens",
  user_id: User.all.sample.id,
  description: "Royal residence built by King Louis XIV located in Versailles, about 19 kilometers (12 mi) west of Paris, France. About 15,000,000 people visit the palace, park, or gardens of Versailles every year, making it one of the most popular tourist attractions in the world.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Las Ventas",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Redondel-las_ventas.jpg/2560px-Redondel-las_ventas.jpg",
  price: rand(1_000..1_000_000),
  country: "Spain",
  city: "Madrid",
  address_details: "Plaza 1",
  user_id: User.all.sample.id,
  description: "The Plaza de Toros de Las Ventas, known simply as Las Ventas, is the largest bullfighting ring in Spain, located in the Guindalera quarter of the Salamanca district of Madrid. It was inaugurated on June 17, 1931. Its seating capacity of 23,798, makes it the third-largest bullfighting run in the world, after bullrings in Mexico and Venezuela, respectively.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Christ the Redeemer",
  picture: "https://www.francebleu.fr/s3/cruiser-production/2021/08/768d3dae-1c70-4149-bafc-7d1eb0cf4793/1200x680_000_9ll6ky.jpg",
  price: rand(1_000..1_000_000),
  country: "Brazil",
  city: "Rio de Janeiro",
  address_details: "Corcovado mountain",
  user_id: User.all.sample.id,
  description: "Christ The Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil, created by French sculptor Paul Landowski and built by Brazilian engineer Heitor da Silva Costa, in collaboration with French engineer Albert Caquot. Romanian sculptor Gheorghe Leonida sculpted the face.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Machu Picchu",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Machu_Picchu%2C_Peru.jpg/540px-Machu_Picchu%2C_Peru.jpg",
  price: rand(1_000..1_000_000),
  country: "Peru",
  city: "Cusco",
  address_details: "Cusco region",
  user_id: User.all.sample.id,
  description: "Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru on a 2,430-meter (7,970 ft) mountain ridge.[2][3] Often referred to as the 'Lost City of the Incas', it is the most familiar icon of the Inca Empire. It is located in the Machupicchu District within Urubamba Province[4] above the Sacred Valley, which is 80 kilometers (50 mi) northwest of Cusco. The Urubamba River flows past it, cutting through the Cordillera and creating a canyon with a tropical mountain climate.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Statue of Liberty",
  picture: "https://cdn.britannica.com/82/183382-050-D832EC3A/Detail-head-crown-Statue-of-Liberty-New.jpg",
  price: rand(1_000..1_000_000),
  country: "United States",
  city: "New York City",
  address_details: "Liberty Island",
  user_id: User.all.sample.id,
  description: "The Statue of Liberty (Liberty Enlightening the World; French: La Liberté éclairant le monde) is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The copper statue, a gift from the people of France, was designed by French sculptor Frédéric Auguste Bartholdi and its metal framework was built by Gustave Eiffel. The statue was dedicated on October 28, 1886.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Circuit Paul Ricard",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Circuit_Paul_Ricard%2C_April_22%2C_2018_SkySat_%28cropped%29.jpg/500px-Circuit_Paul_Ricard%2C_April_22%2C_2018_SkySat_%28cropped%29.jpg",
  price: rand(1_000..1_000_000),
  country: "France",
  city: "Le Castelet",
  address_details: "French Riviera",
  user_id: User.all.sample.id,
  description: "The Circuit Paul Ricard (French pronunciation: ​[siʁkɥi pɔl ʁikaʁ]) is a French motorsport race track built in 1969 at Le Castellet, Var, near Marseille, with finance from pastis magnate Paul Ricard. Ricard wanted to experience the challenge of building a racetrack. The circuit has hosted the FIA Formula One French Grand Prix intermittently from 1971 to 2022.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Santiago Bernabéu Stadium",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Panoramic_santiago_bernabeu.jpg/520px-Panoramic_santiago_bernabeu.jpg",
  price: rand(1_000..1_000_000),
  country: "Spain",
  city: "Madrid",
  address_details: "Charmartín",
  user_id: User.all.sample.id,
  description: "The Santiago Bernabéu Stadium (Spanish: Estadio Santiago Bernabéu, is a football stadium in Madrid, Spain. With a current seating capacity of 81,044, it has the second-largest capacity in Spain,[5] and it has been the home stadium of Real Madrid since its completion in 1947.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

puts "#{Monument.all.length} monuments created"
puts "Seed finished!"
