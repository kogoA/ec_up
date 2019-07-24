class Basket < ApplicationRecord
  has_many :basket_products, dependent: :destroy
  has_many :products, through: :basket_products

  # USD_RATE = 110

  def total_price(product_ids: nil)
    products = product_ids ? self.products.where(id: product_ids) : self.products
    PriceCalculator.total(products)
  end

  # private

  # def total_jpy_price
  #   products = product_ids ? self.products.where(id: product_ids) : self.products
  #   jp_products = products.where(unit: 'yen')
  #   jp_products.sum(:price)
  # end

  # def total_usd_price
  #   products = product_ids ? self.products.where(id: product_ids) : self.products
  #   us_products = products.where(unit: 'usd')
  #   us_products.sum(:price) * USD_RATE
  # end
end
