class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :permalink

      t.timestamps
    end
    add_index :categories, :permalink

    add_column :posts, :category_id, :integer
    add_index :posts, :category_id

    create_table :tags do |t|
      t.string :name
      t.string :permalink

      t.timestamps
    end
    add_index :tags, :permalink

    create_table :taggings do |t|
      t.integer :tag_id
      t.integer :post_id

      t.timestamps
    end
    add_index :taggings, [:tag_id, :post_id]
  end
end
