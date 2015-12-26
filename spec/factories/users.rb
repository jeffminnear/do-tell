include Fake

FactoryGirl.define do
  factory :user do
    email { Fake.email }
    password      "helloworld"
    confirmed_at  { Time.now }
  end
end
