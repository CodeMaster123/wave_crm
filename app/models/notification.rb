class Notification < ActiveRecord::Base
    belongs_to :contact
    belongs_to :company
    belongs_to :user

    attr_accessible :body, :contact_id, :notification_time, :company_id, :subject,  :user_id, :next_notification
    attr_accessor :next_notification

    validates :contact_id, :presence => true
    validates :company_id, :presence => true
    validates :subject, :presence => true

    after_create :send_notification

    def email_send(user_id)
        @user_email_id = User.find(user_id).email
        @id = self.id

        Resque.enqueue_at(self.notification_time, EmailScheduler, @id)
    end

    def self.notifications_by_type(company_id, notification_type)
        @company = Company.find(company_id)
        if notification_type == "old"
            @notifications = @company.notifications.where(:notification_time => Date.today-10.years..Date.today-1.days)
        elsif notification_type == "current"
            @notifications = @company.notifications.where(:notification_time => Date.today..Date.today+10.years)
        end
    end

    def send_notification
        self.email_send(self.user_id) unless self.user_id == nil
    end

end
