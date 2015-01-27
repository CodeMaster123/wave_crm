class DropInventoriesTable < ActiveRecord::Migration
  def change
    drop_table :inventories
  end
end
