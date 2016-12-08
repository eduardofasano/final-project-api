class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'

  validates :name, presence: true
  validates :seller_id, presence: true 
end
