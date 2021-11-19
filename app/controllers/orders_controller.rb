class OrdersController < ApplicationController

  # POST /orders
  def create
    @order = Order.new(order_params)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:registration, :delivery, :amount, :last_payment)
    end
end
