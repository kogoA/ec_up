class UsersController < ApplicationController

  def show
    @user = current_user.id
    # Favoriteのuserに紐つくproduct_it取得
    @products = Favorite.where(params[@user])
    @favorite_products = Product.where(id: [@products.pluck(:product_id)]).select(:id, :name)
  end
end
