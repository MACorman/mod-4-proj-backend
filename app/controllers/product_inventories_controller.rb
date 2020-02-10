class ProductInventoriesController < ApplicationController

    def index
        product_inventories = ProductInventory.all 
        render json: product_inventories
    end

    def create
        product_inventory = ProductInventory.create(product_inventory_params)
        render json: product_inventory
    end

    private 
    def product_inventory_params
        # byebug
        product = Product.find_or_create_by(name: params.require(:name))
        # params.require(:product_inventory).permit(:product_id, :inventory_id, :price, :quantity)

        product_inventory_hash = {
            inventory_id: params.require(:product_inventory).permit(:inventory_id)[:inventory_id],
            product_id: product.id,
            price: 20,
            quantity: 4,
        }
        # byebug
    end

end

# params.require(:product_inventory).permit[:price]
# params.require(:product_inventory).permit[:quantity]