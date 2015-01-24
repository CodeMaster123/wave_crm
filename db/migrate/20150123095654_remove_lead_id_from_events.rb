class RemoveLeadIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :lead_id
  end
end
