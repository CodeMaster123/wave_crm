class CreatePartialPayments < ActiveRecord::Migration
  def change
    create_table :partial_payments do |t|
      t.integer :amount_paid
      t.integer :transaction_id

      t.timestamps
    end
  end
end
