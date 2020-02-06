class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :password
    has_many :carts
    has_many :inventories
end
