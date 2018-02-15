class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :gifs, dependent: :destroy
  has_many :favorites, through: :gifs

  def self.alphabetized
    joins(:gifs)
    .group('categories.id')
    .order(:name)
  end

  def user_favorites(user)
    favorites.where(user: user)
  end
end
