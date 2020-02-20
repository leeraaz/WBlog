module PagesHelper
  def latest_six_blog
    @latest_six_blog= Post.order(created_at: :desc).last(6)
  end 

  def blog_image(blog)
    a = blog.picture_url.try(:first)
    if a.nil?
      return "https://placeimg.com/640/480/nature/grayscale?#{rand(1000)}"
    else
      return a.try(:picture).try(:url)
    end
  end

  def avatar_user(user)
    img = user.avatar_url.try(:first)
    if img.nil?
      return "https://placeimg.com/640/640/people/sepia?#{rand(100)}"
    else
      return img.try(:avatar).try(url)
    end
  end
end
