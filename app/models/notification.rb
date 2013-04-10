class Notification < ActiveRecord::Base
  attr_accessible :body, :contact_id, :sms_sent
  belongs_to :contacts
end
