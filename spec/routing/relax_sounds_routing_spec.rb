require "rails_helper"

RSpec.describe RelaxSoundsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/relax_sounds").to route_to("relax_sounds#index")
    end

    it "routes to #new" do
      expect(get: "/relax_sounds/new").to route_to("relax_sounds#new")
    end

    it "routes to #show" do
      expect(get: "/relax_sounds/1").to route_to("relax_sounds#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/relax_sounds/1/edit").to route_to("relax_sounds#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/relax_sounds").to route_to("relax_sounds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/relax_sounds/1").to route_to("relax_sounds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/relax_sounds/1").to route_to("relax_sounds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/relax_sounds/1").to route_to("relax_sounds#destroy", id: "1")
    end
  end
end
