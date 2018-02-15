class Admin::GifsController < Admin::BaseController
  def create
    category = Category.find_or_create_by(name: params[:category])
    gif = CreateGif.call(category)
    if gif.save
      flash[:notice] = "#{category.name} gif created!"
    else
      flash[:notice] = "Something went wrong. Let's try that again"
    end
    redirect_to gifs_path
  end
end
