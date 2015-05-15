require "rails_helper"

feature "user creates new skill" do
  scenario "successfully" do
    visit root_path
    click_on "Add Skill"
    fill_in "Name", with: "rails"
    click_on "Submit"
    redirect_to root_path
  end
end