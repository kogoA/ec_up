class BasketsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = current_user.products
    @total_price = current_user.basket_total_price
  end

  def create
    Basket.new(user_id: current_user.id, product_id: params[:product_id]).save
    redirect_to baskets_path
  end

  def destroy
    Basket.find(params[:id]).destroy
    redirect_to baskets_path
  end
end