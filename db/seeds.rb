require "random_data"

# Creates Topics
15.times do
  Topic.create!(
    name:        RandomData.random_sentence,
    description: RandomData.random_paragraph
    )
end

topics = Topic.all

# Creates Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph,
    topic: topics.sample
  )
end

posts = Post.all

# Creates Sponsored Posts
50.times do
  SponsoredPost.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    topic: topics.sample,
    price: rand(1 .. 50)
    )
end

# Creates Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Comment.count} comments created"