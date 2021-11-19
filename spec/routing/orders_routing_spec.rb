require "rails_helper"

RSpec.describe OrdersController, type: :routing do
  it "routes /orders/1 to order#destroy" do
    expect(delete: "/orders/1").to route_to(
      controller: "orders",
      action: "destroy",
      id: "1"
    )
  end
end