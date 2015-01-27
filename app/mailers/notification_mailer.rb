class NotificationMailer < ActionMailer::Base
  default from: "varade.vivek.123@gmail.com"

  def vivek
      mail(:to=> "varade.vivek.123@gmail.com", :subject => 'test mail', :from => "varade.vivek.123@gmail.com")
  end

  def new_notification(sender_id, receiver_id, body, subject)
      @receiver_email = Contact.find(receiver_id).email_id
      if Rails.env == "development"
          mail(:to=> @receiver_email, :subject => subject, :from => "varade.vivek@wavetechline.com")
      else
          mail(:to=> @receiver_email, :subject => subject, :from => sender_id)
      end
  end
end
