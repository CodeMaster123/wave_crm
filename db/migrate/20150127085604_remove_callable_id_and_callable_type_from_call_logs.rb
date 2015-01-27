class RemoveCallableIdAndCallableTypeFromCallLogs < ActiveRecord::Migration
  def change
    remove_column :call_logs, :call_loggable_id
    remove_column :call_logs, :call_loggable_type
    remove_column :call_logs, :call_owner_id
  end
end
