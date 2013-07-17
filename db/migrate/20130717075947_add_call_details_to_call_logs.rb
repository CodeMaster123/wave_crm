class AddCallDetailsToCallLogs < ActiveRecord::Migration
  def change
    add_column :call_logs, :call_loggable_id, :integer
    add_column :call_logs, :call_loggable_type, :string
    add_column :call_logs, :contact_id, :integer
  end
end
