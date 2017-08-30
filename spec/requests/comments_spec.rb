require 'rails_helper'

RSpec.describe "Comments", type: :request do
  describe "GET /comments" do
    let (:flower) { Flower.create(title: "My flower", description: "Some desc") }

    it "works! (now write some real specs)" do
      get flower_comments_path(flower, format: :json)
      expect(response).to have_http_status(200)
    end
  end
end
