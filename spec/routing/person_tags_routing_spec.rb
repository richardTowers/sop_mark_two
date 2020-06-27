require "rails_helper"

RSpec.describe PersonTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/person_tags").to route_to("person_tags#index")
    end

    it "routes to #new" do
      expect(get: "/person_tags/new").to route_to("person_tags#new")
    end

    it "routes to #show" do
      expect(get: "/person_tags/1").to route_to("person_tags#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/person_tags/1/edit").to route_to("person_tags#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/person_tags").to route_to("person_tags#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/person_tags/1").to route_to("person_tags#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/person_tags/1").to route_to("person_tags#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/person_tags/1").to route_to("person_tags#destroy", id: "1")
    end
  end
end
