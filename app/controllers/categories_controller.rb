class CategoriesController < ApplicationController
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
      if @category.save
        format.html { redirect_to categories_url, notice: 'Category was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to categories_url, notice: 'Category was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
    end
  end
end
