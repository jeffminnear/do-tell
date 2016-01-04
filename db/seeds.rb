# Create a user with application and events
user = User.create!( email: Fake.email,
                    password: "helloworld",
                    confirmed_at: Time.zone.now
)
app_name = Fake.application_name
application = Application.create!( name: app_name,
                                  url: Fake.url(app_name),
                                  user: user
)
rand(4..8).times do
  event = Event.create!( name: Fake.event_name,
                        application: application,
                        created_at: Fake.time
  )
end

# Create users
20.times do
  user = User.create!( email: Fake.email,
                      password: "helloworld",
                      confirmed_at: Time.zone.now
  )
end
users = User.all

# Create applications
40.times do
  app_name = Fake.application_name
  application = Application.create!( name: app_name,
                                    url: Fake.url(app_name),
                                    user: users.sample
  )
end
applications = Application.all

# Create events
200.times do
  event = Event.create!( name: Fake.event_name,
                        application: applications.sample,
                        created_at: Fake.time
  )
end

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Application.count} applications created"
puts "#{Event.count} events created"
