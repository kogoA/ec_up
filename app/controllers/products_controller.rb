class ProductsController < ApplicationController
  layout 'user_products'

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

end
