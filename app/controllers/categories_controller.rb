class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.alphabetized
  end
end
