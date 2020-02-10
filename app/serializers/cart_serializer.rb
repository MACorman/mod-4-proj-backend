class CartSerializer < ActiveModel::Serializer
    attributes :id, :products
    belongs_to :user
    has_many :product_carts
    has_many :products, through: :product_carts
    
end