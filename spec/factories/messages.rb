FactoryGirl.define do
  factory :message do
    dicussion
    content { Faker::Lorem.paragraph }
  end
end
