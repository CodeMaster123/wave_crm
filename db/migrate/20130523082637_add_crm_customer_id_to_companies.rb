class AddCrmCustomerIdToCompanies < ActiveRecord::Migration
  def change
        change_table(:companies) do |t|
            t.integer :crm_customer_id
        end
  end
end
