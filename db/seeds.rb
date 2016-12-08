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
  unit:"kg",
  max_price:10.0,
  min_price:8.0,
  # final_price:
  duration: 120,
  image: "http://i.dailymail.co.uk/i/pix/2013/03/30/article-0-18605F9F000005DC-421_634x433.jpg"
})

Order.create!({
  product_id: stilton.id,
  buyer_id: mike.id,
  quantity: 20
})
