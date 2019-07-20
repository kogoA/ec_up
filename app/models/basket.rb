class Basket < ApplicationRecord
  has_many :basket_products, dependent: :destroy
  has_many :products, through: :basket_products

  USD_RATE = 110.freeze

  def total_price(product_ids: nil)
    total_jpy_price + total_usd_price
  end

  private
  def total_jpy_price
    jp_products = products.where(unit: 'yen')
    jp_products.sum(:price)
  end

  def total_usd_price
    us_products = products.where(unit: 'usd')
    us_products.sum(:price) * USD_RATE
  end


end
