module Fake
  def email
    Faker::Internet.safe_email
  end

  def application_name
    Faker::App.name
  end

  def url(domain = 'example')
    Faker::Internet.url(domain)
  end

  def event_name
    "#{Faker::Hacker.ingverb} #{Faker::Hacker.adjective} #{Faker::Hacker.noun}"
  end
end
