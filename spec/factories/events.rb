FactoryGirl.define do
  factory :event do
    sequence(:name)   { |n| "event_#{n}" }
    application
  end

end
