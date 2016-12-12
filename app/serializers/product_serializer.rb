class ProductSerializer < ActiveModel::Serializer
  belongs_to :seller
  has_many :orders
  attributes :id, :name, :quantity, :unit, :max_price, :min_price, :final_price, :description, :duration, :image, :orders, :current_quantity, :currency
end
