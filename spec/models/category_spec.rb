require 'rails_helper'

describe Category, type: :model do
  context 'validations' do
    it { should validate_presence_of :name }
  end

  context 'uniqueness' do
    it { should validate_uniqueness_of :name }
  end

  context 'relationships' do
    it { should have_many :gifs }
    it { should have_many :favorites }
  end

  describe 'class methods' do
    context '.alphabetized' do
      it 'returns categories with gifs in alphabetical order by name' do
        category_1 = Category.create!(name: 'kitten')
        Category.create!(name: 'koala')
        category_2 = Category.create!(name: 'kakapo')

        create(:gif, category: category_1)
        create(:gif, category: category_2)

        expect(Category.alphabetized).to eq([category_2, category_1])
      end
    end
  end

  describe 'instance methods' do
    context '#user_favorites' do
      it "returns all categories for a given user's favorited gifs" do
        user = create(:user)
        category = create(:category)
        gifs = create_list(:gif, 3, category: category)
        create_list(:favorite, 3, category: category)
        favorites = []
        gifs.each do |gif|
          favorites << create(:favorite, user: user, gif: gif)
        end

        expect(category.favorites).to_not eq(favorites)
        expect(category.user_favorites(user)).to eq(favorites)
      end
    end
  end
end
