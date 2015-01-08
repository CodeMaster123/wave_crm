FactoryGirl.define do
  factory :target do
    targetable_id 1
    targetable_type 'TeamLeader'
    target_month 1
    target_year 2015
    amount 100000
    achived 5000
    company_id 1
  end
end
