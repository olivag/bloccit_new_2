module UsersHelper
  def no_posts?(user)
    user.posts.empty?
  end
  
  def no_comments?(user)
    user.comments.empty?
  end

  def user_has_favorites?(user)
    current_user && user.favorites    
  end


end
