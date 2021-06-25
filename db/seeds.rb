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
    description: "Pioneer Courthouse Square is located in the heart of Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. It provides a guest with a varied range of food chocices: chorizos, quesadillas, tacos, etc. Rated as the most populat place to visit.",
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
    
    review1 = Review.create(
       title: "We just got carryout...",
       comment: "We just got carryout from here and it was great! The cashier was really friendly and gave us good recommendations and a free sample of soup.It is pretty affordable and you get really large portions. I would recommend this for a good dinner!",
       rating: rand(1..5)
     )
     puts "Review creation..."
     puts review1.title
     review1.stall = Stall.all.sample
     review1.user = User.all.sample
     review1.save!

  stall2 = Stall.create(
    name: "Third Bloc",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Chorizos",
    description: "Third Bloc, also known as THE FOOD gives you the feeling  that you will very rarely hear
                  about a bad experience being by visitors. Exquisite cooking blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Xochimilco, Mexico City, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall2.services = []
  stall2.services += ["Drinks", "Seating",  "Vegetarian"]
  stall2.user = User.all.sample
  file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Mexican_fast_street_food.jpg/275px-Mexican_fast_street_food.jpg')
  stall2.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall2.save!
  file.close
    review2 = Review.create(
       title: "It was pretty good!",
       comment: "What an awesome restaurant! Great service and even better food! The salsa, chips, and guacamole were amazing! So fresh and flavorful.",
       rating: rand(1..5)
     )
     puts "Review creation..."
     puts review2.title
     review2.stall = Stall.all.sample
     review2.user = User.all.sample
     review2.save!

  stall3 = Stall.create(
    name: "La Cocina Unica",
    rating: 3,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Burritos",
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
    category: "Chorizos",
    description: "El Cardenal... If you have a taste for fresh, fired and flavored food,  this is the place.Modern cooking with old flavors will bring you the joy you would otherwise not know about. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Paseo de la Reforma 276, Juárez, Cuauhtémoc, 06600"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall4.services = []
  stall4.services += ["Drinks", "Seating",  "CardPayment", "Drinks"]
  stall4.user = User.all.sample
  file = URI.open('https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2016/08/6092936888_4afa097331_o.jpg')
  stall4.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall4.save!
  file.close

  stall5 = Stall.create(
    name: "Tacos con Amor",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Exotic",
    description: "According to visitors, Tacos con Amor cannot be visited only once. It will keep bringing visitors back due to the variety of flavors it brings in one place. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Paseo de la Reforma 500, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall5.services = []
  stall5.services += ["Drinks", "Hygiene",  "Vegetarian"]
  stall5.user = User.all.sample
  file = URI.open('https://photos.smugmug.com/Mexico-2018/i-2QvK5GZ/0/b738355e/X3/mexican-street-food-12-X3.jpg')
  stall5.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall5.save!
  file.close

  stall6 = Stall.create(
    name: "Rebecca sabor",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Chorizos",
    description: "Rebecca sabor is recognized to be the best stall place for lunch and  of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience. You can taste the smoke flavor to it's perfectionTraditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Paseo de la Reforma 500, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall6.services = []
  stall6.services += ["Drinks", "Seating",  "Vegetarian"]
  stall6.user = User.all.sample
  file = URI.open('https://i.pinimg.com/originals/16/30/c1/1630c19714ae91230ba495f183ffc549.jpg')
  stall6.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall6.save!
  file.close

  stall7 = Stall.create(
    name: "Corral de la Morería",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Corral de la Morería. You get the food quality of a 4-5 star restaurant but at much more reasonable prices. It is by far  one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Frente Metro Nopalera, Av. Tlahuac 6023, Tláhuac, 13300 Ciudad de México, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall7.services = []
  stall7.services += ["Drinks", "Seating",  "Vegetarian", "Takeout"]
  stall7.user = User.all.sample
  file = URI.open('https://i.guim.co.uk/img/static/sys-images/Travel/Pix/pictures/2013/2/5/1360073648421/Tostadas-de-Coyoac-n-stre-010.jpg?width=300&quality=45&auto=format&fit=max&dpr=2&s=b9216dc6443e52f324b45ba26d5ee3e8')
  stall7.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall7.save!
  file.close

    review7 = Review.create(
       title: "Loved it!",
       comment: "FRIDAY NIGHTS ARE AMAZING HERE! GREAT FOOD AND DRINKS",
       rating: 5
     )
     puts "Review creation..."
     puts review2.title
     review7.stall = Stall.all.sample
     review7.user = User.all.sample
     review7.save!

  stall8 = Stall.create(
    name: "Casa Dani",
    rating: 3,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Chorizos",
    description: "If you're looking for fresh Mexican food without compromising on quality then  Casa Dani is the place that will offer exactly this. This place serves excellent Mexican food. You will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Perif. Blvd. Manuel Ávila Camacho 5, Lomas de Sotelo, 53390 Ciudad de México, Méx., Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall8.services = []
  stall8.services += ["Drinks", "Seating",  "Vegetarian"]
  stall8.user = User.all.sample
  file = URI.open('http://orogoldlocations.com/wp-content/uploads/2016/10/OROGOLD-street-foods-to-enjoy-in-puebla-city.jpg')
  stall8.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall8.save!
  file.close

  stall9 = Stall.create(
    name: "Amazonico",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Exotic",
    description: "Amazonico is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. 1o. de Mayo s/n, Fraccionamiento Las Americas, Las Américas, 55076 Ciudad de México, Méx., Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall9.services = []
  stall9.services += ["Drinks", "Seating",  "Vegetarian"]
  stall9.user = User.all.sample
  file = URI.open('https://c8.alamy.com/comp/2AMHFM5/street-food-mexico-city-2AMHFM5.jpg')
  stall9.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall9.save!
  file.close

  stall10 = Stall.create(
    name: "Cocina Cocina",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Cocina Cocina. Awesome prices for the amount of food you get. is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Carr. Federal Pachuca - Mexico 3450, Sierra Hermosa, 55749 Ojo de Agua, Méx., Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall10.services = []
  stall10.services += ["Drinks", "Takeout",  "Vegetarian"]
  stall10.user = User.all.sample
  file = URI.open('https://en.mxcity.mx/wp-content/uploads/2016/05/street-food-guide.jpg')
  stall10.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall10.save!
  file.close

  stall11 = Stall.create(
    name: "No Vida Sin Burritos",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "No Vida Sin Burritos is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Chalma Esq. Autopista México-Quéretaro Lote 8 Col, Autopista Querétaro - México, Jardines de la Hacienda, 54700 Cuautitlán Izcalli, Méx., Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall11.services = []
  stall11.services += ["Drinks", "Seating",  "Vegetarian"]
  stall11.user = User.all.sample
  file = URI.open('https://d3hbe0kmbam4a5.cloudfront.net/photos/ff8c876b-3ae3-49c6-9997-5e42402bcc44.jpg')
  stall11.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall11.save!
  file.close

  stall12 = Stall.create(
    name: "Carne en el Bosque",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Carne en el Bosque, also known as THE FOOD is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Cuitláhuac 3102, Claveria, Azcapotzalco, 02080 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall12.services = []
  stall12.services += ["Drinks", "Seating",  "Vegetarian"]
  stall12.user = User.all.sample
  file = URI.open('https://www.traveltourxp.com/wp-content/uploads/2016/11/Churros.jpg')
  stall12.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall12.save!
  file.close

  stall13 = Stall.create(
    name: "Comer con Us ",
    rating: 3,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Comer con Us  is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Ignacio Allende 3, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06010 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall13.services = []
  stall13.services += ["Drinks", "Seating",  "Vegetarian"]
  stall13.user = User.all.sample
  file = URI.open('https://cdn.w600.comps.canstockphoto.com/thai-street-food-stall-in-bangkok-stock-photos_csp39259433.jpg')
  stall13.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall13.save!
  file.close

  stall14 = Stall.create(
    name: "Marbella",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Marbella will be your first go-to place for the most authentic tacos and quesadillas.  Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av Nuevo León 68, Hipódromo, Cuauhtémoc, 06100 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall14.services = []
  stall14.services += ["Drinks", "Seating",  "Vegetarian"]
  stall14.user = User.all.sample
  file = URI.open('https://i.ytimg.com/vi/sxG0h1w7YYQ/maxresdefault.jpg')
  stall14.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall14.save!
  file.close

  stall15 = Stall.create(
    name: "Nuevo gusto",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Gorditas",
    description: "Gorditas? Welcome! The food you tasted in your dreams becomes a reality, right in the heart of cultural disctrict in the Heart of Mexico. The price is absolutely unbeatable, and the experience is worth sharing with friends.",
    address: "Isabel La Católica 30, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall15.services = []
  stall15.services += ["Drinks", "Seating",  "Vegetarian"]
  stall15.user = User.all.sample
  file = URI.open('https://media.timeout.com/images/105371073/image.jpg')
  stall15.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall15.save!
  file.close

  stall16 = Stall.create(
    name: "No Hambre",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "If you walk along the Main boulevard, you can't miss No Hambre. Made by locals to tourists, it will surely entice you into having a full meal of your choice. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Fray Juan de Zumárraga No. 2, Villa Gustavo A. Madero, Gustavo A. Madero, 07050 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall16.services = []
  stall16.services += ["Drinks", "Seating",  "Vegetarian"]
  stall16.user = User.all.sample
  file = URI.open('https://i.pinimg.com/originals/64/e5/6d/64e56dbf2203ff46a784073abdbfd61a.jpg')
  stall16.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall16.save!
  file.close

  stall17 = Stall.create(
    name: "Palma Queso",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Chorizos",
    description: "Palma Queso rules! This is considered to be the people's choice  for a unique
                  foodstall in Mexico City. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av. Isaac Newton 55, Polanco, Polanco IV Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall17.services = []
  stall17.services += ["Drinks", "Seating",  "Vegetarian"]
  stall17.user = User.all.sample
  file = URI.open('https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2019/01/OG-Madrid-Street-Foodepb0310.jpg')
  stall17.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall17.save!
  file.close

  stall18 = Stall.create(
    name: "Sugo",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Exotic",
    description: "Driving through downtown, you won't miss Sugo. It will offer such an unforgettable experience that you will be amazed. Tacos with Salsa, enchiladas and burritos are one of the main signature dishes that every tourist must try when visiting. Welcome!",
    address: "Av. Dolores Hidalgo 118B, San Felipe de Jesús, Gustavo A. Madero, 07510 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall18.services = []
  stall18.services += ["Drinks", "Seating",  "Vegetarian"]
  stall18.user = User.all.sample
  file = URI.open('https://media.timeout.com/images/105591442/image.jpg')
  stall18.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall18.save!
  file.close

  stall19 = Stall.create(
    name: "El Vertical",
    rating: 5,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "El Vertical not only offers an accessible location, but also unbeatable price.is one of the most unique
                  foodstalls in Mexico City in the sense that you will very rarely hear
                  about a bad experience being had by visitors. Traditional cooking
                  techniques are blended with science to coax out the most wonderful
                  flavours in the boldest of dishes. We guarantee that your experience
                   will be unforgettable",
    address: "Av Villa de Ayala 8, San Felipe de Jesús, Gustavo A. Madero, 07510 Ciudad de México, CDMX, Mexico"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall19.services = []
  stall19.services += ["Drinks", "Seating",  "Vegetarian"]
  stall19.user = User.all.sample
  file = URI.open('https://neuronerdz.com/wp-content/uploads/2018/12/Malaysia-food-street-10.jpg')
  stall19.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall19.save!
  file.close

  stall20 = Stall.create(
    name: "Santa Feliz",
    rating: 4,
    # category: "Tacos", "Quesadilla", "Burritos", "Chorizos", "Exotic",
    category: "Tacos",
    description: "Mexico city has an abundance of great food stalls, and El Cardenal is one of them. Very Generous portions filled with amazing 
                  flavours in every bite. You will be able to choose from a variety of home-made dishes that locals can't stop vist.  We highly recommend that you include this place in your to-try list.",
    address: "Av. Paseo de la Reforma 276, Juárez, Cuauhtémoc, 06600"
    )
#  stall1.services += ["Drinks", "Seating",  "Vegetarian", "Hygiene", "Takeout", "CardPayment",  "Wifi"]
  stall20.services = []
  stall20.services += ["Drinks", "Seating",  "Wifi"]
  stall20.user = User.all.sample
  file = URI.open('https://assets3.thrillist.com/v1/image/1443376/381x254/crop;jpeg_quality=65.jpg')
  stall20.photos.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
  stall20.save!
  file.close