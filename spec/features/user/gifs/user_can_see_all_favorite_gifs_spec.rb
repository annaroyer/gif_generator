require 'rails_helper'

describe 'As a user' do
  context 'when I visit my show page' do
    scenario 'I can see all my favorite gifs' do
      user = create(:user)
      favorites = create_list(:favorite, 3, user: user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)

      favorites.each do |favorite|
        expect(page).to have_xpath("//img[contains(@src,'#{favorite.gif.image_path}')]")
        expect(page).to have_content("#{favorite.gif.category.name}")
      end
    end
  end
end
