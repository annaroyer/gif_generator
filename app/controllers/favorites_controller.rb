class FavoritesController < ApplicationController
  def create
    Favorite.create(gif_id: params[:gif_id], user: current_user)
    redirect_to gifs_path
  end

  def destroy
    favorite = Favorite.find_by(gif_id: params[:id], user: current_user)
    favorite.destroy
    redirect_to user_path(current_user)
  end
end
