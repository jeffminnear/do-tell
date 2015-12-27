module Fake
  def self.email
    Faker::Internet.safe_email
  end

  def self.application_name
    Faker::App.name
  end

  def self.url(domain = 'example')
    Faker::Internet.url(domain)
  end

  def self.event_name
    "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}"
  end
end
