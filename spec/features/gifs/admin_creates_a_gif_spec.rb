require 'rails_helper'

describe 'As an admin' do
  context 'when I enter a one-word search term in field and click generate gif' do
    scenario 'I can create a new gif' do
      admin = create(:admin)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_gif_path
      fill_in 'Category', with: 'burrito'
      click_on 'Generate Gif'
      expect(page).to have_content('burrito')
    end
  end

  describe 'As a user' do
    context 'when I visit new admin gif path' do
      scenario 'I see a 404 page' do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        visit new_admin_gif_path
        expect(page).to have_content("The page you were looking for doesn't exist")
      end
    end
  end
end
