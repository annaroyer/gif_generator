class Gif < ApplicationRecord
  validates_presence_of :image_path, :category
end
