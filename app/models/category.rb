class Category < ActiveRecord::Base
  has_many :posts
  
  attr_accessible :name, :permalink
  has_permalink :name

  def to_s; name end
  def to_param; permalink end
end
