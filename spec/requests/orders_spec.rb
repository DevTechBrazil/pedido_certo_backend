require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "DELETE /destroy" do
    it "delete a order" do
      order = FactoryBot.create(:order)
      expect do
        delete order_url(order)
      end.to change(Order, :count).by(-1)
    end
  end
end
