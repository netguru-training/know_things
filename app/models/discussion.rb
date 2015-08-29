class Discussion < ActiveRecord::Base
  validates :product_id, presence: true

  belongs_to :product
end
