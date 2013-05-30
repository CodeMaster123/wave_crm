class AddInventoryIdToInventoryAdditions < ActiveRecord::Migration
  def change
    add_column :inventory_additions, :inventory_id, :integer
  end
end
