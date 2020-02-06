class ProductInventorySerializer < ActiveModel::Serializer
    attributes :id, :price, :quantity
    belongs_to :product 
    belongs_to :inventory
end