class AddImageCount < ActiveRecord::Migration
  def change
    add_column :settings, :count, :string
  end
end
