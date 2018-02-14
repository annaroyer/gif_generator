class GifsController < ApplicationController
  def index
    @categories = Category.alphabetized
  end
end
