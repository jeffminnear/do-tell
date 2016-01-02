module Fake
  def self.email
    Faker::Internet.safe_email
  end

  def self.application_name
    Faker::App.name
  end

  def self.url(domain = 'example')
    Faker::Internet.url(domain.gsub(/\s+/, '')) # prevent whitespace in url
  end

  def self.event_name
    "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}"
  end

  def self.time(days=30)
    Faker::Time.backward(days)
  end
end
