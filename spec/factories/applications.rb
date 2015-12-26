FactoryGirl.define do
  factory :application do
    sequence(:name)   { |n| "app#{n}" }
    sequence(:url)    { |n| "https://app#{n}@test.com" }
    user
  end
end
