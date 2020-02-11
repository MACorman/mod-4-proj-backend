class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name, :category
    has_many :product_inventories
    has_many :carts, through: :product_carts
    has_many :inventories, through: :product_inventories
    has_many :users, through: :inventories
end