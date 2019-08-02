class Basket < ApplicationRecord
  has_many :products
  belong_to :users

  def total_price(product_ids: nil)
    products = product_ids ? self.products.where(id: product_ids) : self.products
    PriceCalculator.total(products)
  end

end
