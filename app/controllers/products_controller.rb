class ProductsController < ApplicationController

    def index
        products = Product.all 
        render json: products 
    end

    def create
        product = Product.create(products_params)
    end

    private 
    def products_params
        params.require(:product).permit(:user_id, :name, :description, :category)
    end
end
