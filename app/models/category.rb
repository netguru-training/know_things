class Category < ActiveRecord::Base
  has_many :products

  validates :parent_id, :name, presence: true
end
