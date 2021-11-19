require "rails_helper"

RSpec.describe ProductsController, type: :routing do
  describe "routing" do

    it "routes to #create" do
      expect(post: "/products").to route_to("products#create")
    end
  end
end
