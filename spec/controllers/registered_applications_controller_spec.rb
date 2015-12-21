require 'rails_helper'

RSpec.describe RegisteredApplicationsController, type: :controller do

  describe "GET#index" do
    let(:my_user) { create(:user) }
    before do
      sign_in(my_user)
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns the users applications to @applications" do
      application_1 = create(:application, user: my_user)
      get :index
      expect(assigns(:applications)).to eq(my_user.applications)
    end
  end

  describe "GET#create" do
    let(:my_user) { create(:user) }
    before do
      sign_in(my_user)
    end

    it "registers a new application" do
      expect(my_user.applications.count).to eq(0)
      get :create, application: { name: "MyNewApp", url: "http://www.mynewapp.com" }
      expect(my_user.applications.count).to eq(1)
    end

    it "redirects to #index" do
      get :create, application: { name: "MyNewApp", url: "http://www.mynewapp.com" }
      expect(response).to redirect_to(registered_applications_path)
    end
  end
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
