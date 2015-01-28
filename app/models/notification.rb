class Notification < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}

    belongs_to :contact
    belongs_to :company
    belongs_to :user

    attr_accessible :body, :contact_id, :notification_time, :company_id, :subject,  :user_id, :next_notification
    attr_accessor :user_id, :next_notification

    validates :contact_id, :presence => true
    validates :company_id, :presence => true
    validates :subject, :presence => true

    after_create :send_notification

    def email_send(user_id)
        @user_email_id = User.find(user_id).email
        @contact_id = self.id

        Resque.enqueue_at(self.notification_time, EmailScheduler, @user_email_id, @contact_id)
    end

    def as_json(options = {})
        {
            :id => self.id,
            :type => "notification",
            :title => "#{Contact.where(:id => self.contact_id).first.first_last_name} - #{self.body[0..10]+"..."}",
            :description => "",
                :start => self.notification_time,
                :end => self.notification_time,
                :allDay => "",
                :url => Rails.application.routes.url_helpers.notification_path(id)
        }
    end

    def self.notifications_by_type(company_id, notification_type)
        @company = Company.find(company_id)
        if notification_type == "old"
            @notifications = @company.notifications.where(:notification_time => Date.today-10.years..Date.today-1.days)
        elsif notification_type == "current"
            @notifications = @company.notifications.where(:notification_time => Date.today..Date.today+1.month)
        elsif notification_type == "future"
            @notifications = @company.notifications.where(:notification_time => Date.today+1.month..Date.today+10.years)
        end
    end

    def send_notification
        self.email_send(self.user_id) unless self.user_id == nil
    end

end
