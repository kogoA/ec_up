class UsersController < ApplicationController

  def show
    @user = current_user.id
    # userに紐つくproduct_id取得
    @products = Favorite.where(params[@user])
    @favorite_products = Product.where(id: [@products.pluck(:product_id)]).select(:id, :name)
  end
end
