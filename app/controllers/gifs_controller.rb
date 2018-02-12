class GifsController < ApplicationController
  def index
    @gifs = Gif.order(:category)
  end
end
