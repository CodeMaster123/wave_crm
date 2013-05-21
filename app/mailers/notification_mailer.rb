class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"

  def vivek
      mail(:to=> "varade.vivek.123@gmail.com", :subject => 'test mail', :from => "varade.vivek@wavetechline.com")
  end

  def new_notification(sender_id, receiver_id, body, subject)
      mail(:to=> receiver_id, :subject => subject, :from => sender_id)
  end
end
