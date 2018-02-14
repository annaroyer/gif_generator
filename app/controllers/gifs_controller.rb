class GifsController < ApplicationController
  def index
    @categories = Category.alphabetized
  end

  def update
    favorite = Favorite.find_by(gif_id: params[:id], user: current_user)
    favorite.destroy
    redirect_to gifs_path
  end
end
