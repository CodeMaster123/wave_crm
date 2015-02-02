FactoryGirl.define do
  factory :target do
    user_id 1
    target_month Date.today.month
    target_year Date.today.year
    amount 100000
    achived 5000
    company_id 1
  end
end
