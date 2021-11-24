class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products/1
  def show
    render json: @product
  end
  
  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
  end


  private
    def set_product
      @product = Product.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:description, :product_type, :cost, :sale_value)
    end
end
