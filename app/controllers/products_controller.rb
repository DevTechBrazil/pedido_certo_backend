class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products/1
  def show
    render json: @product
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
  end