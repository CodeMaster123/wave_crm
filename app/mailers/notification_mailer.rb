class NotificationMailer < ActionMailer::Base
  default from: "contact@prozapp.com"

  def vivek
      mail(:to=> "varade.vivek.123@gmail.com", :subject => 'test mail', :from => "contact@prozapp.com")
  end

  def new_notification(receiver_email_id, subject)
      if Rails.env == "development"
          mail(:to=> receiver_email_id, :subject => subject, :from => "contact@prozapp.com")
      else
          mail(:to=> receiver_email_id, :subject => subject, :from => "contact@prozapp.com")
      end
  end
end
