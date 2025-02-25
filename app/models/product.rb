class Product < ApplicationRecord
    has_many :product_carts
    has_many :product_inventories
    has_many :carts, through: :product_carts
    has_many :inventories, through: :product_inventories
    has_many :users, through: :inventories

    validates :name, uniqueness: { case_sensitive: false }
end
