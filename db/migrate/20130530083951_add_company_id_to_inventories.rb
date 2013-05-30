class AddCompanyIdToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :company_id, :integer
  end
end
