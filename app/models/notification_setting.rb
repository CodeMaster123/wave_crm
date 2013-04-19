class NotificationSetting < ActiveRecord::Base
    belongs_to :user

    attr_accessible :notification_flag, :user_id
end
