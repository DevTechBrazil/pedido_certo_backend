require "rails_helper"

RSpec.describe CustomersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/customers").to route_to("customers#index")
    end

    it "routes to #create" do
      expect(post: "/customers").to route_to("customers#create")
    end

  end
end
