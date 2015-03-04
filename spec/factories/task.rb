FactoryGirl.define do
  factory :task do
    title 'Meeting with ramesh pawar'
    starts_at Time.now+2.days
    description 'application demo'
    user_id 1
    company_id 1
  end
end
