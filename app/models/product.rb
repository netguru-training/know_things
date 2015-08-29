class Product < ActiveRecord::Base
  has_many :product_users
  has_many :discussions
  belongs_to :category

  validates :name, presence: true
end
