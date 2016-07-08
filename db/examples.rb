# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: 'abc123')
end

User.create([
  { email: 'jacob@jacob.com', password: '123', password_confirmation: '123' }
  ])

Chore.create([
  { title: 'Sweep', where: 'Kitchen', when: 'Tonight', user_id: 5},
  { title: 'Clean', where: 'Bedroom', when: 'Tonight', user_id: 4},
  { title: 'Laundry', where: 'Basement', when: 'Weekend', user_id: 5},
  ])
