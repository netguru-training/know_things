class Message < ActiveRecord::Base
  belongs_to :discussion

  validates :discussion_id, :content, presence: true
end
