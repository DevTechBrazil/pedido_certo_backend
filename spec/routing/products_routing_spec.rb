require "rails_helper"

RSpec.describe ProductsController, type: :routing do
  it "routes /products/1 to product#destroy" do
    expect(delete: "/products/1").to route_to(
      controller: "products",
      action: "destroy",
      id: "1"
    )
  end
end
