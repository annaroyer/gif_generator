class GifsController < ApplicationController
  def index
    @categories = Category.alphabetized
    @favorites = current_user.gifs
  end

  def update
    favorite = Favorite.find_by(gif_id: params[:id], user: current_user)
    favorite.destroy
    redirect_to gifs_path
  end
end
