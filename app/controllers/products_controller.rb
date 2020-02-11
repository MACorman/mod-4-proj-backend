class ProductsController < ApplicationController

    def index
        products = Product.all 
        render json: products 
    end

    def create
        product = Product.find_or_create_by(products_params)
        render json: product
    end

    private 
    def products_params
        params.require(:product).permit(:name, :category)
    end
end
