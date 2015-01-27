class RemoveCrmCustomerIdFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :crm_customer_id
  end
end
