require "rails_helper"

RSpec.describe HogesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hoges").to route_to("hoges#index")
    end

    it "routes to #new" do
      expect(:get => "/hoges/new").to route_to("hoges#new")
    end

    it "routes to #show" do
      expect(:get => "/hoges/1").to route_to("hoges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hoges/1/edit").to route_to("hoges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hoges").to route_to("hoges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hoges/1").to route_to("hoges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hoges/1").to route_to("hoges#destroy", :id => "1")
    end

  end
end
