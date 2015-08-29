class Product < ActiveRecord::Base
  has_many :product_users
  has_many :discussions

  validates :name, presence: true
end
