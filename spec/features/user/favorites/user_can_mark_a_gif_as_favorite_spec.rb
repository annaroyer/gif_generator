require 'rails_helper'

describe 'As a user' do
  context 'when I visit the gif index page and click favorite on a gif' do
    scenario 'that gif is added to my favorites' do
      user = create(:user)
      gif = create(:gif)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit gifs_path
      click_link('favorite')

      visit user_path(user)

      expect(page).to have_xpath("//img[contains(@src,'#{gif.image_path}')]")
      expect(page).to have_content(gif.category.name)
    end
  end
end
