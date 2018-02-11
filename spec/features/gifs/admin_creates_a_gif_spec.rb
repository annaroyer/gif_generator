require 'rails_helper'

describe 'As an admin' do
  context 'when I enter a one-word search term in field and click generate gif' do
    scenario 'I can create a new gif' do
      admin = create(:admin)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_gif_path
      fill_in 'gif[category]', with: 'burrito'
      click_on 'generate gif'

      expect(page).to have_content('burrito')
    end
  end
end
