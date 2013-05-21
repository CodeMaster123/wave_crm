class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"

  def vivek
      mail(:to=> "varade.vivek.123@gmail.com", :subject => 'test mail', :from => "varade.vivek@wavetechline.com")
  end
end
