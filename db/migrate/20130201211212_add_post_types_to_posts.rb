class AddPostTypesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_type, :string
    add_index :posts, :post_type
  end
end
