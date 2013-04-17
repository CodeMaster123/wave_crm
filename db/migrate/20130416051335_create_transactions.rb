class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :contact_id
      t.float :amount
      t.timestamp :transaction_time

      t.timestamps
    end
  end
end
