class Basket < ApplicationRecord
  belongs_to :products
  belongs_to :user
end
