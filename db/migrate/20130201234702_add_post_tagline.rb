class AddPostTagline < ActiveRecord::Migration
  def change
    add_column :posts, :tagline, :text
  end
end
