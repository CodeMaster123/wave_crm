class CreateTransactions < ActiveRecord::Migration
    def change
        create_table :transactions do |t|
            t.float :amount
            t.timestamp :transaction_time
            t.integer :company_id
            t.integer :contact_type
            t.integer :contact_id
            t.integer :matured_by
            t.string :executive_type
            t.string :transaction_type
            t.string :micr_code

            t.timestamps
        end

        add_index :transactions, :company_id
        add_index :transactions, [:contact_id, :contact_type]
    end
end
