require "rails_helper"

RSpec.describe CommentsController, type: :routing do
  describe "routing" do
    let(:flower) { Flower.create!(title: "My flower", description: "Some desc") }

    it "routes to #index" do
      expect(:get => "/flowers/#{flower.id}/comments").to route_to("comments#index", flower_id: flower.id.to_s)
    end

    it "routes to #new" do
      expect(:get => "/flowers/#{flower.id}/comments/new").to route_to("comments#new", flower_id: flower.id.to_s)
    end

    it "routes to #show" do
      expect(:get => "/flowers/#{flower.id}/comments/1").to route_to("comments#show", :id => "1", flower_id: flower.id.to_s)
    end

    it "routes to #edit" do
      expect(:get => "/flowers/#{flower.id}/comments/1/edit").to route_to("comments#edit", :id => "1", flower_id: flower.id.to_s)
    end

    it "routes to #create" do
      expect(:post => "/flowers/#{flower.id}/comments").to route_to("comments#create", flower_id: flower.id.to_s)
    end

    it "routes to #update via PUT" do
      expect(:put => "/flowers/#{flower.id}/comments/1").to route_to("comments#update", :id => "1", flower_id: flower.id.to_s)
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flowers/#{flower.id}/comments/1").to route_to("comments#update", :id => "1", flower_id: flower.id.to_s)
    end

    it "routes to #destroy" do
      expect(:delete => "/flowers/#{flower.id}/comments/1").to route_to("comments#destroy", :id => "1", flower_id: flower.id.to_s)
    end

  end
end
