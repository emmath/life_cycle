require 'spec_helper'

feature "Creating fellow statuses" do
  let!(:fellow_one) { FactoryGirl.create(:fellow, name: "Emma") }
  let!(:fellow_two) { FactoryGirl.create(:fellow, name: "Bob") }
  let!(:status_one) { FactoryGirl.create(:status, name: "lalala") }
  let!(:status_two) { FactoryGirl.create(:status, name: "Another status") }


  before do
    visit '/'
    click_link "New Fellow Status"
  end

  scenario "can create a fellow status" do
    select fellow_one.name, from: 'fellowstatus_fellow_id'
    select status_one.name, from: 'fellowstatus_status_id'

    click_button "Create Fellowstatus"
    page.should have_content "Fellow Status has been added."
  end
end

