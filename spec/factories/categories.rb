# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  parent_id  :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :category do
    parent_id nil
    name { Faker::Lorem.word }
  end
end
