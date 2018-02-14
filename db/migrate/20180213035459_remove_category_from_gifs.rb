class RemoveCategoryFromGifs < ActiveRecord::Migration[5.1]
  def change
    remove_column :gifs, :category, :string
  end
end
