class Discussion < ActiveRecord::Base
  acts_as_taggable

  validates :product_id, :user_id, presence: true

  belongs_to :product
  belongs_to :user
end
