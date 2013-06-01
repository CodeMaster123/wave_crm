class AddLeadIdToProductTransaction < ActiveRecord::Migration
  def change
    add_column :product_transactions, :lead_id, :integer
  end
end
