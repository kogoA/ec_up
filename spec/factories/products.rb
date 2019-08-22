# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  price       :integer          not null
#  unit        :string           default("yen"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# require "rails_helper"

# FactoryBot.define do
#   factory :product do
#     20.times do |n|
#   Product.create!(
#     admin_id: 1,
#     name: Faker::Games::Pokemon.name,
#     description: Faker::Quote.famous_last_words,
#     price: Faker::Number.within(range: 100..1000),
#     unit: %w(yen).sample,
# )
# end
#   end
# end

# FactoryBot.define do
#   factory :product do
#     image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpeg')) }
#   end
# end
