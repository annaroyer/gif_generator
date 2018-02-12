class Admin::GifsController < Admin::BaseController
  def new
  end

  def create
    gif = Gif.new(category: params[:category], image_path: 'fun_gif.jpg')
    if gif.save
      redirect_to gifs_path
    else
      render :new
    end
  end
end
