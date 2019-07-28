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
    description: Faker::Games::Pokemon.move,
    price: Faker::Number.within(100..1000),
    unit: %w(yen).sample
  )
end
