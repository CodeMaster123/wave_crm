class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.timestamp :transaction_time
      t.integer :company_id
      t.integer :contact_type
      t.integer :contact_id

      t.timestamps
    end
  end
end
