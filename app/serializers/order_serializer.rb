class OrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :buyer
  has_one :product
  belongs_to :buyer
end
