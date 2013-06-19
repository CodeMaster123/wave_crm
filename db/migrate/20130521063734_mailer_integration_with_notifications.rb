class MailerIntegrationWithNotifications < ActiveRecord::Migration
  def self.up
      change_table(:notifications) do |t|
          t.boolean :is_sms, :default => false
          t.boolean :is_email, :default => false
      end
  end

  def down
  end
end
