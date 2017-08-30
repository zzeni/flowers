require "rails_helper"

RSpec.describe FlowersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flowers").to route_to("flowers#index")
    end

    it "routes to #new" do
      expect(:get => "/flowers/new").to route_to("flowers#new")
    end

    it "routes to #show" do
      expect(:get => "/flowers/1").to route_to("flowers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/flowers/1/edit").to route_to("flowers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/flowers").to route_to("flowers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flowers/1").to route_to("flowers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flowers/1").to route_to("flowers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flowers/1").to route_to("flowers#destroy", :id => "1")
    end

  end
end
