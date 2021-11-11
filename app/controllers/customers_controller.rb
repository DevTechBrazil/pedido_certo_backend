class CustomersController < ApplicationController
<<<<<<< HEAD
  before_action :set_customer, only: [:create]
=======
  before_action :set_customer, only: [:show, :update, :destroy]
>>>>>>> 3e5e798d36af851dcf90272cddbc589ba31f9b28

  # GET /customers
  def index
    @customers = Customer.all

    render json: @customers
  end
<<<<<<< HEAD

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :telephone, :email)
    end
=======
>>>>>>> 3e5e798d36af851dcf90272cddbc589ba31f9b28
end
