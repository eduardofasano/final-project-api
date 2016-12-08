class User < ApplicationRecord
  has_secure_password

  has_many :products, class_name: 'Product', foreign_key: 'seller_id', dependent: :destroy
  has_many :orders, class_name: 'Order', foreign_key: 'buyer_id', dependent: :destroy
  has_many :received_orders, through: :products, source: :orders

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :password_confirmation, presence: true, on: :create
end
