class ProductInventoriesController < ApplicationController
    def index
        product_inventories = ProductInventory.all 
        render json: product_inventories
    end

    def show
        product_inventory = ProductInventory.find(params[:id])
        render json: product_inventory
    end

    def create
        # product = Product.find_or_create_by(product_params)
        product_inventory = ProductInventory.find_or_create_by(product_inventory_params)
        # byebug
        render json: product_inventory
    end

    def destroy
        product_inventory = ProductInventory.find(params[:id])
        product_inventory.destroy
        render json: product_inventory
    end 

    private 
    def product_inventory_params
        params.permit(:product_id, :inventory_id, :price, :quantity, :description, :image)
        # product = Product.find_or_create_by(name:, :price, :quantity, :description, :image)
        # params.require(:product_inventory).permit(:product_id, :inventory_id, :price, :quantity)
    end

    # def product_params
    #     params.permit(:name, :category)

    # end
end

# params.require(:product_inventory).permit[:price]
# params.require(:product_inventory).permit[:quantity]