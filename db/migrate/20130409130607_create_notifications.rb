class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
        t.boolean :sms_sent
        t.integer :contact_id
        t.string :body
        t.timestamp :notification_time


        t.timestamps
    end
  end
end
