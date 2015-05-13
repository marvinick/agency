module Features
  def enter_info
    visit root_path
    click_on "Add Candidate"
    fill_in "Name", with: "Marvin"
    fill_in "Email", with: "marvin@email.com"
    click_on "Submit"
  end
end