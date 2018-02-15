require 'rails_helper'

describe 'As a visitor' do
  context 'when I visit the homepage and click on create a new account' do
    scenario 'I can fill in the username and password, click submit and create a new account' do
      visit '/'
      click_on 'Sign up for an account'

      expect(current_path).to eq(new_user_path)

      fill_in 'user[username]', with: 'giflover'
      fill_in 'user[password]', with: 'password'
      click_on 'Sign Up'

      expect(current_path).to eq(user_path(1))
      expect(page).to have_content("giflover's Favorite Gifs")
    end
  end
end
