# == Schema Information
#
# Table name: product_users
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class ProductUser < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :product, :user, presence: true
end
