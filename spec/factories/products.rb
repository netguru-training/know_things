# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

FactoryGirl.define do
  factory :product do
    name { Faker::Lorem.word  }
    description { Faker::Lorem.paragraph }
  end
end
