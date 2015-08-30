# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Product < ActiveRecord::Base
  has_many :users, through: :product_users
  has_many :product_users
  has_many :discussions
  belongs_to :category

  validates :name, :category_id, presence: true
end
