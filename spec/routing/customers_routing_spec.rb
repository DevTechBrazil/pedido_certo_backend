require "rails_helper"

RSpec.describe CustomersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/customers").to route_to("customers#index")
    end

    #expect(get: "/customers/:id").to route_to("customers#show")
    it { should route(:get, '/customers/1').to(action: :show, id: 1) }

  end
end
