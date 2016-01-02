require 'rails_helper'

RSpec.feature 'User attempts to delete a registered application', js: true do
  scenario 'User Confirms' do
    user = create(:user)
    application = create(:application, user: user)

    login_user(user)

    click_link application.name

    expect(page).to have_title(application.name)

    click_link "Delete Registered Application"

    page.driver.browser.switch_to.alert.accept

    expect(page).to have_content("You have not registered any applications yet.")
    expect(page).to have_css('.flash', text: 'Application deleted successfully.')
  end

  scenario "User Cancels" do
    user = create(:user)
    application = create(:application, user: user)

    login_user(user)

    click_link application.name

    expect(page).to have_title(application.name)

    click_link "Delete Registered Application"

    page.driver.browser.switch_to.alert.dismiss

    expect(page).to have_content(application.name)
  end
end
