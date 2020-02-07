class InventorySerializer < ActiveModel::Serializer
    attributes :id, :user
    belongs_to :user
    has_many :product_inventories
    has_many :products, through: :product_inventories
end