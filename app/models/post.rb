class Post < ActiveRecord::Base
  attr_accessible :name, :tagline, :thumb_url, :video, :content, :published, :title, :add_tags, :tag_ids, :category_id
  has_permalink :name
  belongs_to :user
  belongs_to :category
  
  has_many :taggings
  has_many :tags, through: :taggings
  
  acts_as_voteable

  scope :published, -> {where published: true}
  attr_accessor :add_tags
  before_save :check_add_tags
  
  def check_add_tags
    (@add_tags || '').split(/,|;/).each do |tag_name|
      tags << Tag.find_or_create_by_name(tag_name.strip)
    end
  end
  
  def to_param; permalink end

  before_save :check_published
  def check_published
    self.published_at = Time.now
  end
end
