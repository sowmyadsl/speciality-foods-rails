# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  new_product = Product.create!(name: Faker::Food.ingredient,
                        cost: Faker::Commerce.price,
                        image: "https://www.olivesdirect.co.uk/media/catalog/product/cache/1/small_image/400x/9df78eab33525d08d6e5fb8d27136e95/p/o/po06.jpg,",
                        country_of_origin: Faker::Address.country)
  5.times do
    new_product.reviews.create!(author: Faker::Friends.character, content_body: Faker::Lorem.characters(100), rating: Faker::Number.between(1, 5))
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
