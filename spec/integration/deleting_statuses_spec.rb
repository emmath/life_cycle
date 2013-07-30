require 'spec_helper'
feature "Deleting statuses" do
  scenario "Deleting a status" do
    Factory(:status, :name => "New Guy")
    visit "/statuses"
    click_link "New Guy"
    click_link "Delete Status"
    page.should have_content("Status has been deleted.")

    visit "/statuses"
    page.should_not have_content("New Guy")
  end
end
