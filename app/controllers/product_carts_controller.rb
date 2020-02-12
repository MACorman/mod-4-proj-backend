class ProductCartsController < ApplicationController

    def index 
        product_carts = ProductCart.all 
        render json: product_carts
    end

    def create
        product_cart = ProductCart.create(product_carts_params)
        render json: product_cart
    end

    private
    def product_carts_params
        params.require(:product_cart).permit(:product_id, :cart_id)
    end
end
