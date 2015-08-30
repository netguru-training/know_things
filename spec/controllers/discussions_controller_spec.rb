require 'rails_helper'

RSpec.describe DiscussionsController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }

  before { sign_in user }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #mine" do
    it "returns http success" do
      get :mine
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
