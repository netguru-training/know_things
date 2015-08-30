class Message < ActiveRecord::Base
  belongs_to :discussion
  belongs_to :user

  validates :discussion_id, :content, presence: true
end
