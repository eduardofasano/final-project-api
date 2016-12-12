# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "products", "orders"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

mike = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password",
  role: "buyer"
})

emily = User.create!({
  username: "emily",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password",
  role: "seller"
})

stilton = Product.create!({
  name: "Stilton",
  description: "The most delicious Stilton cheese of all the land",
  seller_id: emily.id,
  quantity: 50,
  current_quantity: 0,
  unit:"kg",
  max_price:10.0,
  min_price:8.0,
  # final_price:
  duration: 120,
  image: "http://i.dailymail.co.uk/i/pix/2013/03/30/article-0-18605F9F000005DC-421_634x433.jpg"
})

gorgonzola = Product.create!({
  name: "Gorgonzola",
  description: "The most delicious Gorgonzola cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "https://www.winefetch.com/images/cheese/big_topicimage236.jpg"
})

taleggio = Product.create!({
  name: "Taleggio",
  description: "The most delicious Taleggio cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://www.jjzf.dk/wp-content/uploads/2015/02/taleggio.jpg"
})

burrata = Product.create!({
  name: "Burrata",
  description: "The most delicious Burrata cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://www.italianfoodexport.es/wp-content/uploads/2015/06/burrata.jpg"
})

crescenza = Product.create!({
  name: "Crescenza",
  description: "The most delicious Crescenza cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://www.italianfoodexport.es/wp-content/uploads/2015/06/burrata.jpg"
})

mozzarella = Product.create!({
  name: "Mozzarella",
  description: "The most delicious Mozzarella cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://www.cucinare.meglio.it/img/notizie/mozzarella-di-bufala.jpg"
})

pecorino = Product.create!({
  name: "Pecorino",
  description: "The most delicious Pecorino cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://gastronicks.co.uk/wp-content/uploads/2013/03/Normanno.jpg"
})

parmiggiano = Product.create!({
  name: "Pecorino",
  description: "The most delicious Pecorino cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://www.italianherkut.fi/751/parmiggiano-reggiano-24-mesi-1-kg.jpg"
})

caciocavallo = Product.create!({
  name: "Caciocavallo",
  description: "The most delicious Caciocavallo cheese of all the land",
  seller_id: emily.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  max_price:12.0,
  min_price:10.0,
  # final_price:
  duration: 120,
  image: "http://shop.superlatticini.it/WebRoot/StoreIT5/Shops/16631/5176/930B/AD05/97A3/0056/3E95/9311/C8DB/Caciocavallo_affumicato_S.jpg"
})
