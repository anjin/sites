class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :title
      t.string :link
      t.string :color

      t.timestamps
    end
  end
end
