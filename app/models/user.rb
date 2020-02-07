class User < ApplicationRecord
    has_many :carts
    has_many :inventories
    has_many :product_inventories, through: :inventories
    has_many :products, through: :product_inventories
    has_many :product_carts, through: :carts
    # has_many :products, through: :product_carts


    
end
