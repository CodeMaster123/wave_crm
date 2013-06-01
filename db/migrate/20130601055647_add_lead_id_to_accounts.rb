class AddLeadIdToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :lead_id, :integer
  end
end
