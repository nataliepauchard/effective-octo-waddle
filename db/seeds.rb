# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'rach@ga.com', :password => '123'
u2 = User.create :email => 'beck@ga.com', :password => '123'
puts "#{ User.count } users."

Recipe.destroy_all
r1 = Recipe.create(:name => 'Asparagus Risotto', :duration => '45 minutes', :image => 'https://www.italianfoodforever.com/wp-content/uploads/2013/05/asparagusrisotto2-480x270.jpg')
r2 = Recipe.create(:name => 'Garlic, Lemon and Chilli Fresh Pasta', :duration => '1 hour', :image => 'https://idn.blob.core.windows.net/foodyub/1932268320307888920.jpg')
r3 = Recipe.create(:name => 'Soft Boiled Egg on Sourdough with Spinach and Salsa', :duration => '20 minutes', :image => 'https://nomoneynotime.com.au/uploads/recipes/_1200x630_crop_center-center_82_none/1805-homemade-baked-beans-with-toast-eggs-and-spinach.jpg?mtime=1543385000')
puts "#{ Recipe.count } recipes."

Review.destroy_all
v1 = Review.create :tagline => 'Delicious'
v2 = Review.create :tagline => 'So tasty!'
v3 = Review.create :tagline => 'Yum'
v4 = Review.create :tagline => 'So easy to make'
puts "#{ Review.count } reviews."


puts "Recipes and Reviews"
r1.reviews << v1
r2.reviews << v2
r3.reviews << v3 << v4


puts "Reviews and Users"
u1.reviews << v1 << v2
u2.reviews << v3 << v4
