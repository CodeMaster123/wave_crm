class CreateNotificationSettings < ActiveRecord::Migration
  def change
    create_table :notification_settings do |t|
      t.boolean :notification_flag
      t.integer :user_id

      t.timestamps
    end
  end
end
