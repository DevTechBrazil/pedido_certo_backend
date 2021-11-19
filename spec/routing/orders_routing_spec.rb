require "rails_helper"
RSpec.describe OrdersController, type: :routing do
 describe "routing" do
    it "routes to #create" do
      expect(post: "/orders").to route_to("orders#create")
    end    
    it "routes /orders/1 to order#destroy" do
      expect(delete: "/orders/1").to route_to(
      controller: "orders",
      action: "destroy",
      id: "1"
    )
  end
end
