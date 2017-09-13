require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index, format: :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, format: :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #session" do
    it "returns http success" do
      post :session, format: :json
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #recover" do
    it "returns http success" do
      post :recover, format: :json
      expect(response).to have_http_status(:success)
    end
  end

end
