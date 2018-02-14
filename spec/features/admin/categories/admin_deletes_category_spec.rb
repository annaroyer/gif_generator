require 'rails_helper'

describe 'As an admin' do
  context 'when I visit admin categories index and click delete on a category' do
    scenario 'I can delete that category' do
      admin = create(:admin)
      category = create(:category)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit admin_categories_path
      expect(page).to have_content(category.name)

      click_on 'Delete'

      expect(page).to_not have_content(category.name)
    end
  end
end
