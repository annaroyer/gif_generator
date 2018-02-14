class User < ApplicationRecord
  has_secure_password
  validates_presence_of :username, :password
  validates_uniqueness_of :username
  enum role: %w(default admin)
  has_many :favorites
  has_many :gifs, through: :favorites
  has_many :categories, through: :gifs
end
