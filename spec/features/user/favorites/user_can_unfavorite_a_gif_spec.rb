require 'rails_helper'

describe 'As a user' do
  context 'when I visit my show page and click unfavorite on a gif' do
    scenario 'I no longer see that gif on the page' do
      user = create(:user)
      favorite = create(:favorite, user: user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit user_path(user)
      expect(page).to have_xpath("//img[contains(@src,'#{favorite.gif.image_path}')]")
      expect(page).to have_content(favorite.gif.category.name)
      
      find(".unfavorite").click

      expect(page).to_not have_xpath("//img[contains(@src,'#{favorite.gif.image_path}')]")
      expect(page).to_not have_content(favorite.gif.category.name)
    end
  end
end
