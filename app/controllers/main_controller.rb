class MainController < ApplicationController
  
  def index
    @posts = (@group ? @group.posts : Post).published.paginate page: params[:page]
  end
  
  def show_post
    sections = params[:category_and_post].split /\//
    not_found unless @category = Category.find_by_permalink(sections[0])

    not_found unless @post = @category.posts.find_by_permalink(sections[1])

    render template: "main/#{@post.post_type.downcase}_show"
  end

  def posts
    unless @category = Category.find_by_permalink(params[:permalink])
      @tag = Tag.find_by_permalink params[:permalink]
    end
    @group = @category || @tag

    @posts = (@group ? @group.posts : Post).published.paginate page: params[:page]
  end

end
