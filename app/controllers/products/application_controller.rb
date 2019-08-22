class Products::ApplicationController < ApplicationController
  before_action :authenticate_user!

  def create
    basket = current_user.prepare_basket
    product = Product.find(params[:product_id])
    basket.basket_products.create!(product_id: product.id)
    redirect_to basket_path
  end

  def show
    basket = current_user.prepare_basket
    basket.create!(product_id: product.id)
    redirect_to basket_path
  end

  def delete
    basket = current_user.prepare_basket
    product = Product.find(params[:product_id])

    basket_product = basket.basket_products.find_by(product_id: product.id)
    basket_product.destroy!
    redirect_to basket_path
  end
end
