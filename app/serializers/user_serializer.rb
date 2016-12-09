class UserSerializer < ActiveModel::Serializer
  attributes :id, :role, :username, :email
  has_many :orders
end
