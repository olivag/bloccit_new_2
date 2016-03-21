class FavoriteMailer < ApplicationMailer
  default from: "ryumaster001@yahoo.com"

  def new_comment(user, post, comment)
    headers["Message-ID"]  = "<comments/#{comment.id}@obscure-mesa-97051.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@obscure-mesa-97051.herokuapp.com>"
    headers["References"]  = "<post/#{post.id}@yobscure-mesa-97051.herokuapp.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(user, post)
    headers["Message-ID"]  = "<posts/#{post.id}@obscure-mesa-97051.herokuapp.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@obscure-mesa-97051.herokuapp.com>"
    headers["References"]  = "<post/#{post.id}@yobscure-mesa-97051.herokuapp.com>"

    @user = user
    @post = post
    
    mail(to: user.email, subject: "New post #{post.title} has been favorited.")
  end
end
