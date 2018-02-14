require 'rails_helper'

describe Favorite, type: :model do
  context 'relationships' do
    it { should belong_to :user }
    it { should belong_to :gif }
    it { should have_one :category }
  end

  context 'uniqueness' do
    it 'validates that user scoped to gif is unique' do
      user = create(:user)
      gif = create(:gif)

      favorite_1 = Favorite.create!(user: user, gif: gif)
      favorite_2 = Favorite.new(user: user, gif: gif)

      expect(favorite_1).to be_valid
      expect(favorite_2).to be_invalid
    end
  end
end
