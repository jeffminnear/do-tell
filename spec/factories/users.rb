FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@test.com" }
    password      "helloworld"
    confirmed_at  { Time.now }
  end
end
