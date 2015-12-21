FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.tld" }
    password      "helloworld"
    confirmed_at  { Time.now }
  end
end
