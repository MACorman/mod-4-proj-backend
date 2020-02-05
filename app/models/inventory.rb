class Inventory < ApplicationRecord
    belongs_to :user
    has_many :product_inventories
    has_many :products, through: :product_inventories
end
