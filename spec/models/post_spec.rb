require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { Post.create!(title: "New Post Title", body: "New Post body") }

  describe "attributes" do
    it "responds to title" do
      expect(post).to respond_to(:title) #This tests whether post will return a non-nil value when post.title is called.
    end

    it "responds to body" do
      expect(post).to respond_to(:body)
    end
  end
end
