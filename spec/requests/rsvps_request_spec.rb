require 'rails_helper'

RSpec.describe "Rsvps", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/rsvps/create"
      expect(response).to have_http_status(:success)
    end
  end

end
