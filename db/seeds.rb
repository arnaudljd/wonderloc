require "open-uri"

puts 'cleaning the DB'
User.destroy_all
Monument.destroy_all
Booking.destroy_all

puts 'creating the new DB'

  user = User.create!(
    first_name: "Arnaud",
    last_name: "Lejade",
    username: "Lejade4Life",
    email: "arnaud.lejade@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707434/T02NE0241-U053HV6QHPC-334be9208dc3-512_lfigwi.jpg"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))


  user = User.create!(
    first_name: "Javier",
    last_name: "Alvarez Salvado",
    username: "ElGuapo",
    email: "JavierAS@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707402/T02NE0241-U0535M1178C-4cb98cfb4514-512_lxha5a.png"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

  user = User.create!(
    first_name: "Youval",
    last_name: "Akouka",
    username: "MbappéDuWagon",
    email: "youval.akouka@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707364/T02NE0241-U053FCDPZ1R-8c0631b61a00-512_njy6od.jpg"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

  user = User.create!(
    first_name: "Timothee",
    last_name: "Regis",
    username: "SurfingUSA",
    email: "timothee.regis@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707331/T02NE0241-USA18F3FE-0cf4133d9375-512_o9vzmh.jpg"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

  user = User.create!(
    first_name: "Maxime",
    last_name: "Moreira",
    username: "MagicMax",
    email: "mm@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707282/T02NE0241-U053HMT49V1-d45ba989ac22-512_liwfk2.png"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

  user = User.create!(
    first_name: "Lenny",
    last_name: "Sentuc",
    username: "PigeonChief",
    email: "lenny.sentuc@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707248/T02NE0241-U053CEK3QCD-e4b276a0ba85-512_shzztp.jpg"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

  user = User.create!(
    first_name: "Titouan",
    last_name: "Hirsch",
    username: "DGofGoldmannSachs",
    email: "titouan.hirsch@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685707207/T02NE0241-U053KPSBQD8-61e912c5c05b-512_xl3anj.png"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

  user = User.create!(
    first_name: "Helene",
    last_name: "Becquembois",
    username: "WagonWoman",
    email: "helene.becquembois@mail.com",
    password: "password",
    picture_url: "https://res.cloudinary.com/dlvqpdwiw/image/upload/v1685704693/T02NE0241-U053FG4KRA5-4a55123cc91d-512_hx5ooj.jpg"
  )

  file = URI.open(user.picture_url)
  user.photo.attach(io: file, filename: File.basename(user.picture_url))

puts "#{User.all.length} users created"

monu = Monument.create!(
  name: "Great Pyramid of Giza",
  picture: "https://upload.wikimedia.org/wikipedia/commons/e/e3/Kheops-Pyramid.jpg",
  price: rand(1_000..1_000_000),
  address: "Somewhere in the desert",
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
  address: "District de Huairou, Chine, 101406",
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
  address: "Agra",
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
  address: "Fancy french gardens",
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
  address: "Plaza 1",
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
  address: "Corcovado mountain",
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
  address: "Cusco region",
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
  address: "Liberty Island",
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
  address: "French Riviera",
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
  address: "Charmartín",
  user_id: User.all.sample.id,
  description: "The Santiago Bernabéu Stadium (Spanish: Estadio Santiago Bernabéu, is a football stadium in Madrid, Spain. With a current seating capacity of 81,044, it has the second-largest capacity in Spain,[5] and it has been the home stadium of Real Madrid since its completion in 1947.",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

monu = Monument.create!(
  name: "Parc des Princes",
  picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Paris_Parc_des_Princes_1.jpg/460px-Paris_Parc_des_Princes_1.jpg",
  price: rand(1_000..1_000_000),
  address: "rue du Commandant Guilbaud, Paris",
  user_id: User.all.sample.id,
  description: "Le stade du Parc des Princes ou plus simplement le Parc des Princes est un stade situé depuis 1897 dans le sud-ouest de la ville de Paris, dans le 16e arrondissement de Paris puis dans sa forme actuelle sur le périphérique parisien depuis 1972. Constituant le plus important stade français depuis cette date jusqu'en 1998, sa capacité de 48 583 places en fait aujourd'hui le cinquième plus grand stade français, mais toujours l'un des plus anciens et des plus connus, sinon le plus connu de la région parisienne avec le Stade de France",
  rate: rand(1..5)
)
file = URI.open(monu.picture)

monu.photos.attach(io: file, filename: File.basename(monu.picture))

puts "#{Monument.all.length} monuments created"

puts "creating accepted passed bookings"
50.times do
  date_rand = Date.today - rand(1000)
  end_date_rand = date_rand + rand(1..15)

  Booking.create!(
    start_date: date_rand,
    end_date: end_date_rand,
    booked_at: (date_rand - 15),
    status: "Accepted",
    total_price: rand(1_000..1_000_000) * (end_date_rand - date_rand),
    monument_id: Monument.all.sample.id,
    user_id: User.all.sample.id
  )
end

puts "creating rejected passed bookings"
15.times do

  date_rand = Date.today - rand(1000)
  end_date_rand = date_rand + rand(1..15)

  Booking.create!(
    start_date: date_rand,
    end_date: end_date_rand,
    booked_at: (date_rand - 15),
    status: "Rejected",
    total_price: rand(1_000..1_000_000) * (end_date_rand - date_rand),
    monument_id: Monument.all.sample.id,
    user_id: User.all.sample.id
  )
end

puts "#{Booking.all.length} bookings created"

puts "Seed finished!"
