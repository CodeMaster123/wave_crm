class EmailScheduler
    @queue = :email
    def self.perform(user_email_id, contact_id)
       @notification = Notification.find(contact_id)
       NotificationMailer.new_notification(user_email_id, @notification.contact.email, @notification.body, "vivek", "from scheduler").deliver

    end
end

