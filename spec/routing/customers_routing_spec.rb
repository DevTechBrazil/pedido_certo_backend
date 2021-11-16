require "rails_helper"

RSpec.describe CustomersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/customers").to route_to("customers#index")
    end

    it { should route(:get, '/customers/1').to(action: :show, id: 1) }

    it { should route(:put, '/customers/1').to(action: :update, id: 1) }

  end

  it "routes /customer/1 to customer#destroy" do
    expect(delete: "/customers/1").to route_to(
      controller: "customers",
      action: "destroy",
      id: "1"
    )
  end
end
