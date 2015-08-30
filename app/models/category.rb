class Category < ActiveRecord::Base
  has_many :products
  has_many :subcategories, foreign_key: 'parent_id', class_name: 'Category', counter_cache: :subcategories_count
  belongs_to :parent, class_name: 'Category'

  validates :parent_id, :name, presence: true

  scope :main_categories, ->  { where 'parent_id = ?', 0 }
end
