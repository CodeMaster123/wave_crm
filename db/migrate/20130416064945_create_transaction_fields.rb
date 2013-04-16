class CreateTransactionFields < ActiveRecord::Migration
  def change
    create_table :transaction_fields do |t|
      t.string :field_name
      t.integer :user_id

      t.timestamps
    end
  end
end
