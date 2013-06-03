class AddLeadSourceAndStatusToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :lead_source, :string
    add_column :leads, :lead_status, :string
  end
end
