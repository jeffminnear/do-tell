require 'rails_helper'

RSpec.describe API::EventsController, type: :controller do
  describe "OPTIONS#preflight" do
    it "returns status 200" do
      get :preflight
      expect(response).to have_http_status(200)
      expect(response.headers["Access-Control-Allow-Headers"]).to eq("Content-Type")
    end
  end
end
