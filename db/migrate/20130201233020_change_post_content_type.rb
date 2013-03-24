class ChangePostContentType < ActiveRecord::Migration
  def change
    change_column :posts, :title, :text
    change_column :posts, :content, :text
  end
end
