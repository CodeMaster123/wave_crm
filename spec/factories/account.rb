FactoryGirl.define do
  factory :account do
    account_owner 1
    account_name 'New trading company'
    number_of_employees 50
    phone_number 2533555
    website 'newtradingco.com'
    ownership_type 'Proprietership'
    billing_address 'Panchavati, Nashik'
    shipping_address 'Panchavati, Nashik'
    company_id 1
    is_matured true
    lead_id 1
  end
end
