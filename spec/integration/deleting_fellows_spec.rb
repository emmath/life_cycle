require 'spec_helper'

feature "Deleting fellows" do
  scenario "Deleting a fellow" do
    Factory(:fellow, name: "New Guy")
    visit '/'
    click_link "New Guy"
    click_link "Delete Fellow"
    page.should have_content("Fellow has been deleted.")

    visit '/'
    page.should_not have_content("New Guy")
  end
end
