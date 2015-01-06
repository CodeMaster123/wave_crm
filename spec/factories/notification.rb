FactoryGirl.define do
  factory :notification do
    id 1
    company_id 1
    sms_sent false
    body 'this'
    notification_time Date.today+4.days
    is_sms false
    is_email true
    subject 'demo notification'
    contact_id 1
  end
end

