namespace :admin  do
  desc "create notification for each contact on the date of special occasion"
  task :occasion => :environment do

    @contacts = Contact.all
    @special_occasions = SpecialOccasion.where("occasion_date >= #{Date.today.beginning_of_month.to_s(:db)} & occasion_date <= #{Date.today.end_of_month.to_s(:db)}")

    @special_occasions.each do |special_occasion|
      @contacts.each do |contact|
      Notification.create([:body => "Dear #{contact.first_last_name}  #{special_occasion.body}",
                      :contact_id => "#{contact.id}",
                      :sms_sent => "false",
                      :notification_time => "#{special_occasion.occasion_date}"])
      end
    end
  end
end
