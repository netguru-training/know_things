require 'rails_helper'

RSpec.describe DiscussionsController, type: :controller do

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

end