class Order < ApplicationRecord
  belongs_to :product
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'

  validates :buyer_id, presence: true
end
