class CreateProductTransactions < ActiveRecord::Migration
  def change
    create_table :product_transactions do |t|
      t.integer :product_id
      t.integer :transaction_id
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
