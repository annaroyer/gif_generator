class FavoritesController < ApplicationController
  def create
    Favorite.create(gif_id: params[:gif_id], user: current_user)
    redirect_to gifs_path
  end
end
