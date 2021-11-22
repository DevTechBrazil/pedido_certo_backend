class ProductsController < ApplicationController

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end


  private
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:description, :product_type, :cost, :sale_value)
    end
end
