class Category < ActiveRecord::Base
  has_many :products
  belongs_to :parent, class_name: 'Category'
  has_many :subcategories, foreign_key: 'parent_id', class_name: 'Category'

  validates :parent_id, :name, presence: true

  scope :main_category, ->  { where 'parent_id = ?', 0 }
end
