require 'rails_helper'

RSpec.feature 'User deletes a registered application', js: true do
  scenario 'Successfully' do
    user = create(:user)
    application = create(:application, user: user)

    login_user(user)

    click_link application.name

    expect(page).to have_title(application.name)

    click_link "Delete Registered Application"

    expect(page).to have_content("You have not registered any applications yet.")
    expect(page).to have_css('.flash', text: 'Application deleted successfully.')
  end
end
