class Discussion < ActiveRecord::Base
  validates :product_id, :user_id, presence: true

  belongs_to :product
  belongs_to :user
end
