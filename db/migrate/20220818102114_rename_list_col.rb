class RenameListCol < ActiveRecord::Migration[7.0]
  def change
    rename_column :lists, :title, :name
  end
end
