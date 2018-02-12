class FavoritesController < ApplicationController
  def create
    # binding.pry
    Favorite.create(gif_id: 1, user: current_user)
    redirect_to gifs_path
  end
end
