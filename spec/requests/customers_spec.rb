require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/customers", type: :request do
  let(:valid_attributes) {
    {
      name: 'Customer name',
      phone_number: '(11) 1010-2220',
      email: 'customer@gmail.com'
    }
  }

  let(:invalid_attributes) {
    {
      name: 'Customer name',
      phone_number: nil,
      email: nil,
    }
  }

  let(:valid_headers) {
    {}
  } 

  describe "GET /index" do
    it "renders a successful response" do
      Customer.create! valid_attributes
      get customers_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe "DELETE /destroy" do
    it "delete a customer" do
      customer = FactoryBot.create(:customer)

      expect do
        delete customer_url(customer)
      end.to change(Customer, :count).by(-1)
    end
  end
end
