require 'rails_helper'

describe 'As an admin' do
  context 'when I visit new admin gifs, enter a new category and click generate gif' do
    scenario 'I create a new category' do
      admin = create(:admin)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_gifs_path
      
    end
  end
end
