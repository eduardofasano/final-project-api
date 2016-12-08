class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity
  has_one :product
  belongs_to :buyer
end
