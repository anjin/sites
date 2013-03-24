module ApplicationHelper
  def admin?
    current_user.try(:admin?)
  end

  def main_post_path(post)
    "/#{post.category.permalink}/#{post.permalink}"
  end
  
  def by_tag_path(tag)
    "/posts/#{tag.permalink}"
  end
end
