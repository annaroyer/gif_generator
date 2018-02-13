require 'rails_helper'

describe 'As a user' do
  context 'when I visit gif index page' do
    scenario 'I can see all gifs sorted by category' do
      user = create(:user)
      gif_1 = create(:gif, category: 'kakapo')
      gif_2 = create(:gif, category: 'koala')
      gif_3 = create(:gif, category: 'kitten')
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit gifs_path

      expect(page).to have_content("#{gif_1.category} #{gif_3.category} #{gif_2.category}")
    end
  end
end
