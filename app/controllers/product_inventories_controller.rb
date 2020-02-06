class ProductInventoriesController < ApplicationController

    def index
        product_inventories = ProductInventory.all 
        render json: product_inventories
    end

end
