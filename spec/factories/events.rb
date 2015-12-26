include Fake

FactoryGirl.define do
  factory :event do
    name        { Fake.event }
    application
  end

end
