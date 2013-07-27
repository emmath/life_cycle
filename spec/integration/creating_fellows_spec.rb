require 'spec_helper'

feature 'Creating Fellows' do
  scenario "can create a fellow" do
    visit '/'
    click_link 'New Fellow'
    fill_in 'Name', with: 'New Guy'
    fill_in 'Email', with: "guy@example.com"
    fill_in 'Notes', with: "such a good guy"
    click_button 'Create Fellow'
    page.should have_content('Fellow has been added.')
  end
end
