FactoryGirl.define do
  factory :user do
    first_name 'vivek'
    last_name 'varade'
    address 'nashik'
    mobile_no '9890543164'
    account_type 2
    company_id 100
    email 'varade.vivek.123@gmail.com'
    password 'admin123'
    password_confirmation 'admin123'
  end
end
