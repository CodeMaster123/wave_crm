class EmailScheduler
    @queue = :email
    def self.perform(id)
       @notification = Notification.find(id)
       @receiver_email_id = @notification.contact.email_id
       @subject = @notification.subject
       NotificationMailer.new_notification(@receiver_email_id, @subject).deliver

    end
end

