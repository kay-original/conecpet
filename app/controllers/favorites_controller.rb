class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(pet_id: params[:pet_id])
    favorite.save
    redirect_back(fallback_location: pet_path(:pet_id))
  end

  def destroy
    favorite = Favorite.find_by(pet_id: params[:pet_id], user_id: current_user.id)
    favorite.destroy
    redirect_back(fallback_location: pet_path(:pet_id))
  end
end
