require 'rails_helper'

RSpec.describe "Flowers", type: :request do
  describe "GET /flowers" do
    it "works! (now write some real specs)" do
      get flowers_path(format: :json)
      expect(response).to have_http_status(200)
    end
  end
end
