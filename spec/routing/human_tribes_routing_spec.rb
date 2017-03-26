require "rails_helper"

RSpec.describe HumanTribesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/human_tribes").to route_to("human_tribes#index")
    end

    it "routes to #new" do
      expect(:get => "/human_tribes/new").to route_to("human_tribes#new")
    end

    it "routes to #show" do
      expect(:get => "/human_tribes/1").to route_to("human_tribes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/human_tribes/1/edit").to route_to("human_tribes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/human_tribes").to route_to("human_tribes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/human_tribes/1").to route_to("human_tribes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/human_tribes/1").to route_to("human_tribes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/human_tribes/1").to route_to("human_tribes#destroy", :id => "1")
    end

  end
end
