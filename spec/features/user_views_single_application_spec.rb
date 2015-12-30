require 'rails_helper'

RSpec.feature 'User views a single application', js: true do
  scenario 'user views an application they own' do
    user = create(:user)
    application = create(:application, user: user)
    event = create(:event, application: application)

    login_user(user)

    click_link application.name

    expect(page).to have_content(application.name)
    expect(page).to have_content(application.url)
    expect(page).to have_content('Loading...')
  end

  scenario 'user views an application they do not own' do
    user = create(:user)
    other_user = create(:user)
    other_user_owned_application = create(:application, user: other_user)

    login_user(user)

    visit application_path(other_user_owned_application)

    message = "This Application does not exist, or you do not have permission to view it."
    expect(page).to have_content(message)
  end
end
