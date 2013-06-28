class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
        t.boolean :sms_sent
        t.integer :contact_id
        t.string :body
        t.timestamp :notification_time
        t.integer :company_id

        t.timestamps
    end

    add_index :notifications, :company_id
    add_index :notifications, :contact_id
  end
end
