require 'spec_helper'

feature "registering names" do
  scenario "player registers a name" do
  visit ('/')
    fill_in :name, with: 'Scott'
      click_button 'Submit'
      expect(page).to have_content 'Scott'
  end
end
