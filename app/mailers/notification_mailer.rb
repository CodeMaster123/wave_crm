class NotificationMailer < ActionMailer::Base
  default from: "contact@prozapp.com"

  def vivek
      mail(:to=> "vijaygaikwad1988@gmail.com", :subject => 'test mail', :from => "contact@prozapp.com")
  end

  def new_notification(sender_id, receiver_id, body, subject)
      @receiver_email = Contact.find(receiver_id).email_id
      if Rails.env == "development"
          mail(:to=> @receiver_email, :subject => subject, :from => "vijaygaikwad1988@gmail.com")
      else
          mail(:to=> @receiver_email, :subject => subject, :from => sender_id)
      end
  end
end
