class ChangePublish < ActiveRecord::Migration
  def change
    remove_column :posts, :published
    add_column :posts, :published, :boolean, default: false
    add_column :posts, :published_at, :datetime
  end
end
