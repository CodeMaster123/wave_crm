class AddLeadIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :lead_id, :integer
  end
end
