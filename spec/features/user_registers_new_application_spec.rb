require 'rails_helper'

RSpec.feature "User registers new application", js: true do
  scenario "successfully" do
    user = create(:user)

    login_user(user)

    expect(page).to have_title("Registered Applications")

    click_link "New Application"

    expect(page).to have_title("New Application")

    fill_in "Name", with: "MyNewApp"
    fill_in "Url", with: "https://mynewapp.example.com"
    click_button "Save"

    expect(page).to have_content("Your new application has been registered.")

    expect(page).to have_title("Registered Applications")
    expect(page).to have_content("MyNewApp")
  end
end
