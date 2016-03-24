module UsersHelper
  def no_posts?(user)
    user.posts.empty?
  end
  
  def no_comments?(user)
    user.comments.empty?
  end
end
