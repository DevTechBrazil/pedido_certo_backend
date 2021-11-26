class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  
  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end


  def update
    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy
  end

  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:registration_date, :delivery_date, :amount, :last_payment_date)
    end
end
