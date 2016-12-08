class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :unit, :max_price, :min_price, :final_price, :description, :seller_id, :duration, :image
end
