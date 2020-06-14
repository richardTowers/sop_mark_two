require "rails_helper"

RSpec.describe SenioritiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/seniorities").to route_to("seniorities#index")
    end

    it "routes to #new" do
      expect(get: "/seniorities/new").to route_to("seniorities#new")
    end

    it "routes to #show" do
      expect(get: "/seniorities/1").to route_to("seniorities#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/seniorities/1/edit").to route_to("seniorities#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/seniorities").to route_to("seniorities#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/seniorities/1").to route_to("seniorities#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/seniorities/1").to route_to("seniorities#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/seniorities/1").to route_to("seniorities#destroy", id: "1")
    end
  end
end
