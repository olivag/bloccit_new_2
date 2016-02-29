require "random_data"

# Creates Topics
15.times do
  Topic.create!(
    name:        RandomData.random_sentence,
    description: RandomData.random_paragraph
    )
end

topics = Topic.all

# Creates Users
5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
    )
end

users = User.all

# Creates Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph,
    topic: topics.sample,
    user: users.sample
  )
end

posts = Post.all

# Creates Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph,
    user: users.sample
  )
end

# Create an admin user
admin = User.create!(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
  )

# Create a member
member = User.create!(
  name: 'Member User',
  email: 'member@example.com',
  password: 'helloworld',
  role: 'member'
  )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"