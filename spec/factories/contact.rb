FactoryGirl.define do
  factory :contact do
    id 1
    first_name 'vivek'
    middle_name 'pandharinath'
    last_name 'varade'
    address 'nashik'
    mobile_no 9503467486
    landline_no '2533518'
    contactable_type 'Lead'
    contactable_id 1
    company_id 1
    email_id 'varade.vivek.123@gmail.com'
    contact_relationship 'client'
    account_id 1

    factory :notification do
      id 1
      company_id 1
      sms_sent false
      body 'this'
      notification_time Date.today+4.days
      is_sms false
      is_email true
      subject 'demo notification'
    end
  end
end
