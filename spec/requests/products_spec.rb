require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "DELETE /destroy" do
    it "delete a product" do
      product = FactoryBot.create(:product)
      expect do
        delete product_url(product)
      end.to change(Product, :count).by(-1)
    end
  end
end
