class ProductSerializer < ActiveModel::Serializer
  belongs_to :seller
  attributes :id, :name, :quantity, :unit, :max_price, :min_price, :final_price, :description, :duration, :image
end
