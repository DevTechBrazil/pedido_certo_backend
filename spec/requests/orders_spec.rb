require 'rails_helper'
RSpec.describe "/orders", type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Order. As you add validations to Order, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      registration_date: '2021-11-19',
      delivery_date: '2021-11-19',
      amount: 100,
      last_payment_date: '2021-11-19'
    }
  }

  let(:invalid_attributes) {
    {
      registration_date: '2021-11-19',
      delivery_date: nil,
      amount: nil,
      last_payment_date: nil
    }
  }

  let(:valid_headers) {
    {}
  }

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Order" do
        expect {
          post orders_url,
               params: { order: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Order, :count).by(1)
      end

      it "renders a JSON response with the new order" do
        post orders_url,
             params: { order: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to include("application/json")
      end
    end

    context "with invalid parameters" do
      it "does not create a new Order" do
        expect {
          post orders_url,
               params: { order: invalid_attributes }, as: :json
        }.to change(Order, :count).by(0)
      end

      it "renders a JSON response with errors for the new order" do
        post orders_url,
             params: { order: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to include("application/json")
      end
    end
    describe "DELETE /destroy" do
    it "delete a order" do
      order = FactoryBot.create(:order)
      expect do
        delete order_url(order)
      end.to change(Order, :count).by(-1)
    end
  end
  end
  end
