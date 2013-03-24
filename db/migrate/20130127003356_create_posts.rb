class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.date :published

      t.timestamps
    end
  end
end
