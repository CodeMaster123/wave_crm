class AddUserIdToCallLogs < ActiveRecord::Migration
  def change
    add_column :call_logs, :user_id, :integer
  end
end
