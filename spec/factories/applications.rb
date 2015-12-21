FactoryGirl.define do
  factory :application do
    sequence(:name) { |n| "app_#{n}" }
    sequence(:url) { |n| "#{n}#{n}#{n}#{n}.com" }
    user
  end
end
