class Admin::GifsController < Admin::BaseController
  def create
    category = Category.find_or_create_by(name: params[:category])
    gif = CreateGif.call(category)
    if gif.save
      redirect_to gifs_path
    else
      render :new
    end
  end
end
