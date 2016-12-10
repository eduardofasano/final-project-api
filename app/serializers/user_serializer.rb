class UserSerializer < ActiveModel::Serializer
  attributes :id, :role, :username, :email, :products
  has_many :orders
  has_many :products
end
