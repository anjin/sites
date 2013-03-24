class TagsController < ApplicationController
  load_and_authorize_resource find_by: :permalink

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    respond_to do |format|
      if @tag.save
        format.html { redirect_to tags_url, notice: 'Tag was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @tag.update_attributes(params[:tag])
        format.html { redirect_to tags_url, notice: 'Tag was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @tag.destroy

    respond_to do |format|
      format.html { redirect_to tags_url }
    end
  end
end
