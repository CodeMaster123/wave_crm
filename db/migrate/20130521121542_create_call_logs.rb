class CreateCallLogs < ActiveRecord::Migration
  def change
    create_table :call_logs do |t|
      t.string :call_result
      t.string :subject
      t.string :call_type
      t.string :call_purpose
      t.datetime :call_start_time
      t.integer :call_duration
      t.integer :call_owner_id
      t.integer :lead_id

      t.timestamps
    end
  end
end
