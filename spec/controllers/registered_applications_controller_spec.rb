require 'rails_helper'

RSpec.describe RegisteredApplicationsController, type: :controller do

  describe "GET#index" do
    it "returns http success" do
      user = create(:user)
      sign_in(user)
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns the users applications to @applications" do
      user = create(:user)
      sign_in(user)
      application_1 = create(:application, user: user)
      get :index
      expect(assigns(:applications)).to eq(user.applications)
    end
  end

  # describe "GET#create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET#show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET#update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET#destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
