class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.order(:name)
  end
end
