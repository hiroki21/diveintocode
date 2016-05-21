# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1000.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  user = User.new(name:  name,
               email: email,
               uid: n,
               password: password,
               password_confirmation: password
               )
  user.skip_confirmation!
  user.save
end

1000.times do |n|
  title  = "title-#{n}"
  content = "content-#{n}"
  user_id = n
  user = User.find(n+1)
  user.blogs.create!(title:  title,
               content: content,
               user_id: user_id
               )
end

