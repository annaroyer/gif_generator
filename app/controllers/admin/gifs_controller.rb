class Admin::GifsController < Admin::BaseController
  def new
  end

  def create
    gif = CreateGif.call(params[:category])
    if gif.save
      redirect_to gifs_path
    else
      render :new
    end
  end
end
