require "rails_helper"

RSpec.describe MenuCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/menu_categories").to route_to("menu_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/menu_categories/new").to route_to("menu_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/menu_categories/1").to route_to("menu_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/menu_categories/1/edit").to route_to("menu_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/menu_categories").to route_to("menu_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/menu_categories/1").to route_to("menu_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/menu_categories/1").to route_to("menu_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/menu_categories/1").to route_to("menu_categories#destroy", :id => "1")
    end

  end
end
