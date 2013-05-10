class CreateInventoryAdditions < ActiveRecord::Migration
  def change
    create_table :inventory_additions do |t|
      t.integer :product_id
      t.timestamp :addition_date
      t.integer :quantity

      t.timestamps
    end
  end
end
