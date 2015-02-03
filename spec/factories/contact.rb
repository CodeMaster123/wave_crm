FactoryGirl.define do
  factory :contact do
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
  end
end
