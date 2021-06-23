# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# THE INITIAL SEEDS HAVE BEEN COMMENTED OUT FOR CREATION OF OFFICIAL SEEDS
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#    5.times do
#    usertest = User.create(
#    email: Faker::Internet.email,
#    password: "terteUset")
   # puts "User creation..."
   # puts usertest.usernamer
#    usertest.save!
#   end
#   Stall.destroy_all
#   20.times do
#     stall = Stall.create(
#     name: Faker::Restaurant.name,
#     rating: rand(1..5),
#     category: ["Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic"].sample,
#     description: Faker::Quote.matz,
#     address: Faker::Address.full_address
#     )
#
#   #seeding services for unique values only
#    stall.services = []
#    allServices = %w[Drinks Seating Vegetarian Hygiene Takeout CardPayment Wifi]
#
#    selected = []
#    4.times {
#     puts "Adding a service..."
#     selected << allServices.sample
#     stall.services << selected.last
#     allServices = allServices - selected
#    }
#
#     file = URI.open('https://www.intrepidtravel.com/adventures/wp-content/uploads/2018/05/shutterstock_761367214-800.png')
#     stall.user = User.all.sample
#     puts "Listing creation..."
#     puts stall.name
#
#     stall.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#      stall.save!
#     file.close
#   end
#
#   20.times do
#     review = Review.create(
#       title: Faker::Book.title,
#       comment: "Great food and wonderful service. The food is so full of flavor
#                 and fresh. Especially the kabobs!! I'm not a kabob person but
#                 these were amazing!! If you haven't tried this place you
#                 definitely need to. Definitely coming back again!",
#       rating: rand(1..5)
#     )
#     puts "Review creation..."
#     puts review.title
#     review.stall = Stall.all.sample
#     review.user = User.all.sample
#     review.save!
#
#   end
# 1)  Create 5 test users (Faker is fine)
# 2) Create 20 individual stalls
# 3) Create 10 individual reviews to random stalls.

 5.times do
    usertest = User.create(
    email: Faker::Internet.email,
    password: "terteUset")
    puts "User creation..."
    puts usertest.username
    usertest.save!
   end

  stall1 = Stall.create(
    name: "Pioneer Courthouse Square",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Pioneer Courthouse Square is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Paseo de la Reforma 276, Juárez, Cuauhtémoc, 06600"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall1.services = []
  stall1.services += ["Drinks", "Seating",  "Vegetarian"]
  stall1.user = User.all.sample
  file = URI.open('https://c8.alamy.com/comp/R74A4N/a-burrito-being-prepared-at-a-street-food-stall-in-mexico-city-mexico-R74A4N.jpg')
  stall1.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall1.save!
  file.close

  stall2 = Stall.create(
    name: "Third Bloc",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Third Bloc, also known as THE FOOD is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Calle de la Palma 23, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06000"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall2.services = []
  stall2.services += ["Drinks", "Seating",  "Vegetarian"]
  stall2.user = User.all.sample
  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Mexican_fast_street_food.jpg/275px-Mexican_fast_street_food.jpg')
  stall2.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall2.save!
  file.close

  stall3 = Stall.create(
    name: "La Cocina Unica",
    rating: 3,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "La Cocina Unica is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Paseo de la Reforma 276, Juárez, Cuauhtémoc, 06600"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall3.services = []
  stall3.services += ["Drinks", "Seating",  "Vegetarian"]
  stall3.user = User.all.sample
  file = URI.open('https://img1.10bestmedia.com/Images/Photos/241845/p-videos-030_54_990x660_201404250040.jpg')
  stall3.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall3.save!
  file.close

  stall4 = Stall.create(
    name: "El Cardenal",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "El Cardenal is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Paseo de la Reforma 276, Juárez, Cuauhtémoc, 06600"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall4.services = []
  stall4.services += ["Drinks", "Seating",  "Vegetarian"]
  stall4.user = User.all.sample
  file = URI.open('https://img1.10bestmedia.com/Images/Photos/241845/p-videos-030_54_990x660_201404250040.jpg')
  stall4.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall4.save!
  file.close

