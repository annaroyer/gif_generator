class Admin::CategoriesController < Admin::BaseController
  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to gifs_path
  end
end
