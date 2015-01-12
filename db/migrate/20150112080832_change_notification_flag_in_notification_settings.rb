class ChangeNotificationFlagInNotificationSettings < ActiveRecord::Migration
  def change
    change_column :notification_settings, :notification_flag, :boolean, default: false
  end
end
