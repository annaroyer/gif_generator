class CreateGifs < ActiveRecord::Migration[5.1]
  def change
    create_table :gifs do |t|
      t.string :category
      t.string :image_path

      t.timestamps
    end
  end
end
