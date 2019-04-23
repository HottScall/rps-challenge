require 'spec_helper'

feature "playing a game" do

before do
visit ('/')
fill_in :name, with: 'Scott'
click_button 'Submit'     
end
  scenario 'see the options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end