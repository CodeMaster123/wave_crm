class CreateCrmCustomers < ActiveRecord::Migration
  def change
    create_table :crm_customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.float :amount_paid
      t.date :subscription_start
      t.date :subscription_ends

      t.timestamps
    end
  end
end
