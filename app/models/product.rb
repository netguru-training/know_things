class Product < ActiveRecord::Base
  has_many :users, through: :product_users
  has_many :product_users
  has_many :discussions
  belongs_to :category

  validates :name, :category_id, presence: true
end
