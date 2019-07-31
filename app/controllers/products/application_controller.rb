class Products::ApplicationController < ApplicationController
  before_action :authenticate_user!

  def show
    basket = current_user.prepare_basket
    basket.basket_products.create!(product_id: product.id)
    redirect_to basket_path
  end
end