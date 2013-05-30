class AddCompanyIdToInventoryAdditions < ActiveRecord::Migration
  def change
    add_column :inventory_additions, :company_id, :integer
  end
end
