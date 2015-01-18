class RemoveLeadablesFromLeads < ActiveRecord::Migration
  def change
    remove_column :leads, :leadable_type
    remove_column :leads, :leadable_id
  end
end
