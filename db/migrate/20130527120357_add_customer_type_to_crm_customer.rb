class AddCustomerTypeToCrmCustomer < ActiveRecord::Migration
  def change
        change_table(:crm_customers) do |t|
            t.string :customer_type
        end
  end
end
