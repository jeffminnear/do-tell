require 'rails_helper'

RSpec.feature 'User views registered applications', js: true do
  scenario "successfully with no applications" do
    user = create(:user)

    login_user(user)

    expect(page).to have_title("Registered Applications")
    expect(page).to have_content("You have not registered any applications yet.")
  end

  scenario "successfully with applications" do
    user = create(:user)
    applications = create_list(:application, 3, user: user)

    login_user(user)

    expect(page).to have_title("Registered Applications")
    expect(page).not_to have_content("You have not registered any applications yet.")

    applications.each do |application|
      expect(page).to have_content(application.name)
      expect(page).to have_content(application.url)
    end
  end
end
