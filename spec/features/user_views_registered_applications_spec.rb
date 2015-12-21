require 'rails_helper'

RSpec.feature 'User views registered applications', js: true do
  scenario "successfully with no applications" do
    user = create(:user)

    visit '/users/sign_in'

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password

    click_button "Log in"

    expect(page).to have_title("Registered Applications")
    expect(page).to have_content("You have not registered any applications yet.")
  end
end
