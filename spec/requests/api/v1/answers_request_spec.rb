require 'rails_helper'

RSpec.describe "Api::V1::Answers", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/answers/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/answers/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/answers/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/answers/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
