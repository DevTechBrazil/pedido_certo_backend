class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  def destroy
    @order.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end
end
