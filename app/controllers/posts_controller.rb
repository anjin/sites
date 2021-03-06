class PostsController < ApplicationController
  load_and_authorize_resource find_by: :permalink

  def index

  end

  def show

  end

  def new

  end

  def edit

  end

  def vote
    @post = Post.accessible_by(current_ability).find_by_permalink params[:post_id]

    if params[:direction] == 'up'
      if current_user.voted_for?(@post)
        redirect_to :back, notice: 'already voted up' and return
      else
        current_user.unvote_for @post
        current_user.vote_for @post
      end
    else
      if current_user.voted_against?(@post)
        redirect_to :back, notice: 'already voted down' and return
      else
        current_user.unvote_for @post
        current_user.vote_against @post
      end
    end
    redirect_to :back, notice: "voted!"
  end

  def create
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: 'Post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to [:edit, @post], notice: 'Post was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
    end
  end
end
