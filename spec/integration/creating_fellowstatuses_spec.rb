require 'spec_helper'

feature "Creating fellow statuses" do
  before do
    Factory(:fellow, name: "New Guy")
    Factory(:status, name: "A Status")
    visit '/'
    click_link "New Fellow Status"
  end

  scenario "can create a fellow status" do
    select("New Guy", from: "Choose a Fellow!")
    select("A Status", from: "Set a Status!")
    click_link "Create Fellowstatus"
    page.should have_content "Fellow Status has been created."
  end
end

