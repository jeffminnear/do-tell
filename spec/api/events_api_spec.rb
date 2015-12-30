require 'rails_helper'

RSpec.describe '/api/events' do
  context 'POST#create' do

    context 'with correct paramaters' do
      xit 'creates a new event for the registered application' do
          user = create(:user)
          application = create(:application)
          params = { name: "the name of the event" }

          post '/api/events/', params.to_json
          json = JSON.parse(response.body)

          expect(json).to eq("")
      end
    end
  end
end
