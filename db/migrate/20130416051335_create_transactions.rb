class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      #t.integer :contact_id
      t.float :amount
      t.timestamp :transaction_time
      t.integer :company_id
      t.integer :contact_type

      t.timestamps
    end
  end
end
