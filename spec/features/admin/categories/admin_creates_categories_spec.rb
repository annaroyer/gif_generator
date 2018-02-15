require 'rails_helper'

describe 'As an admin' do
  context 'when I visit new admin gifs, enter a new category and click generate gif' do
    scenario 'I create a new category' do
      admin = create(:admin)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit gifs_path
      expect(Category.count).to eq(0)
      expect(page).to_not have_content('breakfast')

      within('nav') do
        fill_in 'Category', with: 'breakfast'
        click_on 'Generate Gif'
      end

      expect(page).to have_content('Breakfast')
      expect(Category.count).to eq(1)
    end
  end
end
