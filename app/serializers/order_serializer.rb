class OrderSerializer < ActiveModel::Serializer
  attributes :id, :buyer_id, :quantity
  has_one :product
end
