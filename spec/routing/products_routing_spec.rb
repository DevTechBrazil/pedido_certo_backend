require "rails_helper"

RSpec.describe ProductsController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/products/1").to route_to("products#show", id: "1")
    end

    it "routes to #update" do
      expect(put: "/products/1").to route_to("products#update", id: "1")
    end

    it "routes to #create" do
      expect(post: "/products").to route_to("products#create")
    end

    it "routes /products/1 to product#destroy" do
      expect(delete: "/products/1").to route_to(
                                         controller: "products",
                                         action: "destroy",
                                         id: "1"
                                       )
    end
  end
end
