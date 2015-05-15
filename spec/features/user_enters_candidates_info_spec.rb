require "rails_helper"

feature "User enters candidates info" do
  scenario "successfully" do
    enter_info
    click_on "Add Candidate"
  end
end