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

FactoryGirl.define do
  factory :message do
    dicussion
    content { Faker::Lorem.paragraph }
  end
end
