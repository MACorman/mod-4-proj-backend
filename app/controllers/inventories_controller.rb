class InventoriesController < ApplicationController

    def index
        inventories = Inventory.all 
        render json: inventories
    end

    def create
        inventory = Inventory.find_or_create_by(inventory_params)
        render json: inventory
    end

    private
    def inventory_params
        params.require(:inventory).permit(:user_id)
    end

end
