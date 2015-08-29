FactoryGirl.define do
  factory :category do
    parent_id nil
    name { Faker::Lorem.word }
  end
end
