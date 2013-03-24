class ChangedPublishDefault < ActiveRecord::Migration
  def up
    change_column :posts, :published, :boolean, :default => true
  end

  def down
      change_column :posts, :published, :boolean, :default => false
  end
end
