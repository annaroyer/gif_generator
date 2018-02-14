require 'rails_helper'

describe 'As a user' do
  context 'when I visit gif index page' do
    scenario 'I can see all gifs sorted by category' do
      user = create(:user)
      category_1 = Category.create!(name: 'kakapo')
      category_2 = Category.create!(name: 'koala')
      category_3 = Category.create!(name: 'kitten')
      gif_1 = create(:gif, category: category_1)
      gif_2 = create(:gif, category: category_2)
      gif_3 = create(:gif, category: category_3)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit gifs_path

      expect(page).to have_content("#{gif_1.category.name} #{gif_3.category.name} #{gif_2.category.name}")
    end
  end
end
