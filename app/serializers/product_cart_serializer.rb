class ProductCartSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to :product 
    belongs_to :cart 
end