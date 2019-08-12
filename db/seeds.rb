# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Product.create!(
    admin_id: 1,
    name: Faker::Games::Pokemon.name,
    description: Faker::Quote.famous_last_words,
    price: Faker::Number.within(100,300,500,700,1000,1500),
    unit: %w(yen).sample
    image: Faker::LoremFlickr.image(size: "50x60")
  )
end
