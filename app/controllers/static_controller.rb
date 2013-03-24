class StaticController < ApplicationController
  
  rescue_from ActionView::MissingTemplate do |exception|
    # use exception.path to extract the path information
    render :file => "public/404.html", :status => 404
  end
  
  def page
    render :template => "static/#{params[:page].gsub(/-/,'_')}"
  end

end
