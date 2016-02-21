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
    body: RandomData.random_paragraph
  )
end

user = User.first
user.update_attributes!(
  email: "ryumaster001@yahoo.com",
  password: "helloworld"
  )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"