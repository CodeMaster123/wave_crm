class RemoveSmsAndEmailFromNotifications < ActiveRecord::Migration
  def up
    remove_column :notifications, :sms_sent
    remove_column :notifications, :is_sms
    remove_column :notifications, :is_email
  end

  def down
    add_column :notifications, :is_email, :boolean
    add_column :notifications, :is_sms, :boolean
    add_column :notifications, :sms_sent, :boolean
  end
end
