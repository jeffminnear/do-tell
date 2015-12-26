include Fake

FactoryGirl.define do
  app_name = Fake.application_name
  factory :application do
    name  app_name
    url   { Fake.url(app_name) }
    user
  end
end
