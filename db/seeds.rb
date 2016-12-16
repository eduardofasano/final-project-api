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

marcello = User.create!({
  username: "Marcello",
  email: "marcello.negri@gmail.com",
  password: "password",
  password_confirmation: "password",
  role: "seller"
})

antonios = User.create!({
  username: "Antonios",
  email: "antonios.mantzavinos@gmail.com",
  password: "password",
  password_confirmation: "password",
  role: "seller"
})

petra = User.create!({
  username: "Petra",
  email: "petra.paulsson@gmail.com",
  password: "password",
  password_confirmation: "password",
  role: "seller"
})

julian = User.create!({
  username: "Yehuda",
  email: "yehuda@gmail.com",
  password: "password",
  password_confirmation: "password",
  role: "seller"
})

stilton = Product.create!({
  name: "Stilton",
  description: "The history of Stilton can be traced back to the early 18th century and although it is clear that the recipe used has changed quite dramatically over the years it remains one of the world's best known and much loved cheeses. Stilton's unique flavour makes it suitable not only for those special occasions when only the best will do , but also but for perking up everyday recipes and snacks.",
  seller_id: marcello.id,
  quantity: 20,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:16.0,
  min_price:12.0,
  final_price:16.0,
  enddate: (Time.now + (60*60*24*10)),
  image1: "http://rk.wsimgs.com/wsimgs/rk/images/dp/wcm/201638/0016/img52c.jpg",
  image2: "http://rk.wsimgs.com/wsimgs/rk/images/dp/wcm/201638/0015/stilton-cheese-o.jpg",
  image3: "http://i.dailymail.co.uk/i/pix/2013/03/30/article-0-18605F9F000005DC-421_634x433.jpg"
})

gorgonzola = Product.create!({
  name: "Gorgonzola",
  description: "Gorgonzola is a type of blue cheese that originates in the northern Italian town of Gorgonzola. It's made with cow's milk and is distinguished by the blue or green veins of mold that grow through it. Gorgonzola cheese has a strong, pungent flavor and distinctive aroma. Younger Gorgonzola is moist and soft, almost creamy. As it ages, it develops a drier, more crumbly, consistency and a more pronounced flavor. Gorgonzola is used in numerous ways in Italian cooking.",
  seller_id: marcello.id,
  quantity: 100,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:20.0,
  min_price:15.0,
  final_price:20.0,
  enddate: (Time.now + (60*60*24*3)),
  image1: "http://www.formaggio.it/wp-content/uploads/2013/07/Gorgonzola-dolce.jpeg",
  image2: "http://www.valsana.it/media/catalog/product/cache/1/image/5e06319eda06f020e43594a9c230972d/2/0/20901_5.jpg",
  image3:"http://www.deabyday.tv/data/guides/cucina-e-ricette/preparazioni-di-base/Come-fare-il-gorgonzola-in-casa/image_big_16_9/gorgonzola-fatto-in-casa.jpg"
})

taleggio = Product.create!({
  name: "Taleggio",
  description: "Taleggio is a semisoft, washed-rind, smear-ripened Italian cheese that is named after Val Taleggio. The cheese has a thin crust and a strong aroma, but its flavor is comparatively mild with an unusual fruity tang. Taleggio and similar cheeses have been around since Roman times, with Cicero, Cato the Elder, and Pliny the Elder all mentioning it in their writings.",
  seller_id: marcello.id,
  quantity: 80,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:22.0,
  min_price:18.0,
  final_price:22.0,
  enddate: (Time.now + (60*60*24*7)),
  image1: "http://www.slowfood.com/expo2015/wp-content/uploads/2015/05/taleggio_dop.png?x66017",
  image2: "http://www.guffantiformaggi.com/wp-content/plugins/simple-post-thumbnails/timthumb.php?src=/wp-content/thumbnails/1188.jpg&w=600&h=600&zc=1&ft=jpg",
  image3: "http://www.jjzf.dk/wp-content/uploads/2015/02/taleggio.jpg"
})

burrata = Product.create!({
  name: "Burrata",
  description: "Burrata is a fresh Italian cheese made from mozzarella and cream. The outer shell is solid mozzarella, while the inside contains stracciatella and cream, giving it an unusual, soft texture. It is also defined by some sources as an outer shell of mozzarella filled with butter or a mixture of butter and sugar. It is usually served fresh and at room temperature. The word burrata means buttered in Italian. Burrata is a typical product of Murgia in the south of Italy.",
  seller_id: marcello.id,
  quantity: 30,
  current_quantity: 0,
  currency: "£",
  unit:"kg",
  max_price:28.0,
  min_price:23.0,
  final_price:28.0,
  enddate: (Time.now + (60*60*24*2)),
  image1: "http://www.italianfoodexport.es/wp-content/uploads/2015/06/burrata.jpg",
  image2: "http://static.donnamoderna.com/wp-content/uploads/2015/06/Cialledda-taglia-la-burrata.jpg?186874",
  image3: "http://www.justataste.com/wp-content/uploads/2013/08/Burrata-Cheese-Recipe.jpg"
})

parmiggiano = Product.create!({
  name: "Parmiggiano",
  description: "Parmigiano-Reggiano, is a hard, granular cheese. The name Parmesan is often used generically for various simulations of this cheese, although this is prohibited in trading in the European Economic Area under European law. Parmigiano-Reggiano is made from unpasteurized cow's milk. The whole milk of the morning milking is mixed with the naturally skimmed milk of the previous evening's milking, resulting in a part skim mixture.",
  seller_id: marcello.id,
  quantity: 30,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:12.0,
  min_price:10.0,
  final_price:12.0,
  enddate: (Time.now + (60*60*24*1)),
  image1: "http://www.springbankcheesecrowfoot.com/wordpress/wp-content/uploads/2012/12/Parmigiano-Reggiano.jpg",
  image2: "http://www.italianherkut.fi/751/parmiggiano-reggiano-24-mesi-1-kg.jpg",
  image3: "http://www.teatronaturale.it/media/img/cibo/2016/Parmigiano-Reggiano-Dop.jpg"
})

bananabread = Product.create!({
  name: "Banana Bread",
  description: "Banana bread is a type of bread made from mashed bananas. It is often a moist, sweet, cake-like quick bread; however, there are some banana bread recipes that are traditional-style raised breads. Banana bread first became a standard feature of American cookbooks with the popularization of baking soda and baking powder in the 1930s. It appeared in Pillsbury's 1933 Balanced Recipes cookbook.",
  seller_id: antonios.id,
  quantity: 20,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:8.0,
  min_price:6.0,
  final_price:8.0,
  enddate: (Time.now + (60*60*6)),
  image1: "http://assets.simplyrecipes.com/wp-content/uploads/2014/08/banana-bread-horiz-a-1600.jpg",
  image2: "http://images.media-allrecipes.com/userphotos/560x315/171761.jpg",
  image3: "https://aos.iacpublishinglabs.com/question/beb95190f7032a32f27dd0dbbd5edb00/aq/700px-394px/recipe-paula-deen-s-banana-bread_1b8182a5338a48c1.jpg?domain=cx.aos.ask.com"
})

quinoa = Product.create!({
  name: "Quinoa",
  description: "Quinoa is the common name for Chenopodium quinoa of the flowering plant family Amaranthaceae. It is grown as a grain crop primarily for its edible seeds. It is a pseudocereal, rather than a true cereal, as it is not a grass. Quinoa is closely related to species such as beetroots and spinach and to amaranth, another pseudocereal which it closely resembles. After harvest, the seeds are processed to remove the coating containing the bitter-tasting saponins.",
  seller_id: julian.id,
  quantity: 200,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:11.0,
  min_price:8.5,
  final_price:11.0,
  enddate: (Time.now + (60*60*6)),
  image1: "http://img.sndimg.com/food/image/upload/v1/img/recipes/23/55/34/sxUcqkRjRGEZhTb5J9zQ_quinoa-9465.jpg",
  image2: "http://exceednutrition.com/wp-content/uploads/2015/06/o-TYPES-OF-QUINOA-facebook.jpg",
  image3: "http://www.well-beingsecrets.com/wp-content/uploads/Quinoa-Is-Packed-With-Potassium.jpg"
})

smokedsalmon = Product.create!({
  name: "Smoked Salmon",
  description: "Smoked salmon is a popular ingredient in canapés, often combined with cream cheese and lemon juice. Smoking is used to preserve salmon against microorganism spoilage. During the process of smoking salmon the fish is cooked and dehydrated which kills and impedes the activity of bacteria. An important example of this is Clostridium botulinum, which can be present in seafood, and which is killed by the high heat treatment which occurs during the smoking.",
  seller_id: petra.id,
  quantity: 200,
  current_quantity: 0,
  unit:"kg",
  currency: "£",
  max_price:24.0,
  min_price:21.0,
  final_price:24.0,
  enddate: (Time.now + (60*60*2)),
  image1: "http://www.bleikerssmokehouse.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/o/royal-fillet-small.jpg",
  image2: "https://www.gourmetfoodstore.com/images/Product/large/fossen-norwegian-smoked-salmon-trout-whole-side-1S-2460.jpg",
  image3: "http://demandware.edgesuite.net/aaxm_prd/on/demandware.static/-/Sites-Traeger-Library/default/dwf5a2de51/images/recipes/cider_hot_smoked_salmon_Hero.jpg"
})

# mozzarella = Product.create!({
#   name: "Mozzarella",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   seller_id: emily.id,
#   quantity: 30,
#   current_quantity: 0,
#   unit:"kg",
#   currency: "£",
#   max_price:12.0,
#   min_price:10.0,
#   final_price:12.0,
#   enddate: DateTime.new(2016,12,15,12),
#   image1: "http://www.cucinare.meglio.it/img/notizie/mozzarella-di-bufala.jpg"
# })
#
# pecorino = Product.create!({
#   name: "Pecorino",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   seller_id: emily.id,
#   quantity: 30,
#   current_quantity: 0,
#   unit:"kg",
#   currency: "£",
#   max_price:12.0,
#   min_price:10.0,
#   final_price:12.0,
#   enddate: DateTime.new(2016,12,15,12),
#   image1: "http://gastronicks.co.uk/wp-content/uploads/2013/03/Normanno.jpg"
# })

# caciocavallo = Product.create!({
#   name: "Caciocavallo",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   seller_id: emily.id,
#   quantity: 30,
#   current_quantity: 0,
#   unit:"kg",
#   currency: "£",
#   max_price:12.0,
#   min_price:10.0,
#   final_price:12.0,
#   enddate: DateTime.new(2016,12,15,12),
#   image1: "http://shop.superlatticini.it/WebRoot/StoreIT5/Shops/16631/5176/930B/AD05/97A3/0056/3E95/9311/C8DB/Caciocavallo_affumicato_S.jpg"
# })

# crescenza = Product.create!({
#   name: "Crescenza",
#   description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   seller_id: emily.id,
#   quantity: 30,
#   current_quantity: 0,
#   unit:"kg",
#   currency: "£",
#   max_price:12.0,
#   min_price:10.0,
#   final_price:12.0,
#   enddate: DateTime.new(2016,12,15,12),
#   image1: "https://www.stuzzicante.it/secondi-piatti/formaggi/crescenza_O2.jpg"
# })
