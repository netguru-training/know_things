# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Discussion < ActiveRecord::Base
  acts_as_taggable

  validates :product_id, :user_id, presence: true

  belongs_to :product
  belongs_to :user

  has_many :messages

  accepts_nested_attributes_for :messages

  def question
    messages.first
  end
end
