# == Schema Information
#
# Table name: messages
#
#  id            :integer          not null, primary key
#  discussion_id :integer
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Message < ActiveRecord::Base
  belongs_to :discussion
  belongs_to :user

  validates :discussion_id, :user_id, :content, presence: true
end
