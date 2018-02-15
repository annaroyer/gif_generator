class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.alphabetized
    @favorites = current_user.gifs
  end
end
