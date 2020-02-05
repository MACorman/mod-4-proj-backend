class User < ApplicationRecord
    has_many :carts
    has_many :inventories
    
end
