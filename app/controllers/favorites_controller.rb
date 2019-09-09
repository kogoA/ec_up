class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(product_id: params[:product_id])
    favorite.save
    redirect_to root_path
  end

  def destroy
    favorite = Favorite.find_by(product_id: params[:product_id], user_id: current_user.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end