class Notification < ActiveRecord::Base
  attr_accessible :body, :contact_id, :sms_sent, :notification_time
  belongs_to :contacts
end
