class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :gif
  has_one :category, through: :gif
  validates_uniqueness_of :user_id, scope: :gif_id
end
