class Product < ActiveRecord::Base
  has_many :product_users

  validates :name, presence: true
end
