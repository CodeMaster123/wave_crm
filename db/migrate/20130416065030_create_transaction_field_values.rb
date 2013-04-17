class CreateTransactionFieldValues < ActiveRecord::Migration
  def change
    create_table :transaction_field_values do |t|
      t.integer :transaction_id
      t.integer :transaction_field_id
      t.string :transaction_field_value

      t.timestamps
    end
  end
end
