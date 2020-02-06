class ProductCartsController < ApplicationController

    def index 
        product_carts = ProductCart.all 
        render json: product_carts
    end
end
