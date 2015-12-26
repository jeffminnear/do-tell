include Fake



FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "#{n}@example.com" }
    password      "helloworld"
    confirmed_at  { Time.now }
  end
end
