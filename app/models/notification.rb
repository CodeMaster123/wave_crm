class Notification < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}

    belongs_to :contact
    belongs_to :company

    attr_accessible :body, :contact_id, :sms_sent, :notification_time, :company_id, :is_sms, :is_email, :subject

    validates :contact_id, :presence => true
    validates :company_id, :presence => true
    validates :subject, :presence => true

    def sms_send
        @sms_gateway_username = "wave"
        @sms_gateway_password = "1492407050"
        @sms_sender_name = "wave"
        @sms_receiver_number = self.contact.mobile_no
        @sms_message = URI::encode(self.body)
        @sms_api_url = "http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=#{@sms_gateway_username}&password=#{@sms_gateway_password}&sendername=#{@sms_sender_name}&mobileno=#{@sms_receiver_number}&message=#{@sms_message}"

        Resque.enqueue_at(self.notification_time, SmsScheduler, @sms_api_url)
    end

    def email_send(user_id)
        @user_email_id = User.find(user_id).email
        @contact_id = self.id

        Resque.enqueue_at(self.notification_time, EmailScheduler, @user_email_id, @contact_id)
    end

    def check_if_sms
        if self.is_sms == true
            "Yes"
        else
            "No"
        end
    end

    def check_if_email
        if self.is_email == true
            "Yes"
        else
            "No"
        end
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
        if notification_type == "old"
            puts 'old =================>'
            @notifications = Notification.where(:notification_time => Date.today-3650.days..Date.today-1.days, :company_id => company_id)
        elsif notification_type == "current"
            @notifications = Notification.where(:notification_time => Date.today..Date.today+30.days, :company_id => company_id)
        elsif notification_type == "future"
            @notifications = Notification.where(:notification_time => Date.today+31.days..Date.today+3650.days, :company_id => company_id)
        end
    end

    #def self.send_notification(notification,user_id)
    #    if notification.is_sms
    #        notification.sms_send
    #    end
    #    if notification.is_email
    #        notification.email_send(user_id)
    #    end
    #end

    private
    def custom_checkbox_validation
        unless self.is_email || self.is_sms
            errors.add(:base, "Please check atleast one checkbox.")
        end
    end
end
