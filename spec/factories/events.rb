include Fake

FactoryGirl.define do
  factory :event do
    name        { Fake.event_name }
    application
  end

end
