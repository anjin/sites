class ThumbnailPic < ActiveRecord::Migration
  def change
    add_column :posts, :thumb_url, :text
  end
end
