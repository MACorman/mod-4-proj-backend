class ProductInventorySerializer < ActiveModel::Serializer
    attributes :id, :price, :quantity, :description, :image
    belongs_to :product 
    belongs_to :inventory
end