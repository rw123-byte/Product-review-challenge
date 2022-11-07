# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
Review.create(star_rating: 6, comment: "Decent", user_id: user1.id, product_id: product1.id)
Review.create(star_rating: 4, comment: "Bad", user_id: user2.id, product_id: product2.id)
Review.create(star_rating: 8, comment: "Amazing", user_id: user3.id, product_id: product4.id)
Review.create(star_rating: 9, comment: "Great!!", user_id: user1.id, product_id: product3.id)
Review.create(star_rating: 4, comment: "Poor", user_id: user3.id, product_id: product3.id)
Review.create(star_rating: 10, comment: "Too Good!", user_id: user1.id, product_id: product1.id)
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

puts "Seeding done!"