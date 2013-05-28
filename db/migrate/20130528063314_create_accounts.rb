class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :account_owner
      t.string :account_name
      t.integer :number_of_employees
      t.integer :phone_number
      t.string :website
      t.string :ownership_type
      t.string :billing_address
      t.string :shipping_address

      t.timestamps
    end
  end
end
