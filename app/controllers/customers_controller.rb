class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]

  # GET /customers
  def index
    @customers = Customer.all

    render json: @customers
  end

feature/customer_create
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
    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:name, :telephone, :email)
    end

  # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end
end
  # GET /customers/1
  def show
    render json: @customer
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end
  end
