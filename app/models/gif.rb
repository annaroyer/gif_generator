class Gif < ApplicationRecord
  validates_presence_of :image_path, :category
  validates_uniqueness_of :image_path
  has_many :favorites 
  belongs_to :category
end
