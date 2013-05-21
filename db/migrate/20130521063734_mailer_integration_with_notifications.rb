class MailerIntegrationWithNotifications < ActiveRecord::Migration
  def self.up
      change_table(:notifications) do |t|
          t.boolean :is_sms, :null => false, :default => 0
          t.boolean :is_email, :null => false, :default => 0
      end
  end

  def down
  end
end
