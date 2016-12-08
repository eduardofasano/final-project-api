class UserSerializer < ActiveModel::Serializer
  attributes :id, :role, :username, :email
end
