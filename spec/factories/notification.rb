FactoryGirl.define do
  factory :notification do
    id 1
    company_id 1
    body 'this'
    notification_time Date.today+4.days
    subject 'demo notification'
    contact_id 1
  end
end

