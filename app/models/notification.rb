class Notification < ActiveRecord::Base
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
      @sms_receiver_number = self.contact.mobile_no #contact_number #8888884083
      @sms_message = URI::encode(self.body)
      @sms_api_url = "http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=#{@sms_gateway_username}&password=#{@sms_gateway_password}&sendername=#{@sms_sender_name}&mobileno=#{@sms_receiver_number}&message=#{@sms_message}"

      #if cur_request.length > 1000
      Resque.enqueue_at(self.notification_time, SmsScheduler, @sms_api_url)
      #end

      #if request.length < cur_request.length
      #  response = Net::HTTP.get_response(URI.parse(cur_request))
      #end
  end

  def email_send(user_id)
      puts "In modellllllllllllllll"
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

  def self.old_notifications(company_id)
    @old_notification = Notification.where(:notification_time => Date.today, :company_id => company_id)
  end

  def self.current_notifications(company_id)
    @current_notification = Notification.where(:notification_time => Date.today..Date.today+30.days, :company_id => company_id)
  end

  def self.future_notifications(company_id)
    @future_notification = Notification.where(:notification_time => Date.today, :company_id => company_id)
  end

end
