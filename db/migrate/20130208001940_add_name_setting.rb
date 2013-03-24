class AddNameSetting < ActiveRecord::Migration
  def change
    add_column :settings, :name, :string
  end
end
