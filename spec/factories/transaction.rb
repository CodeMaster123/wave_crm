FactoryGirl.define do
  factory :crm_transaction do
    transaction_time Time.now
    amount 1000
    company_id 1
    contact_type 1
    contact_id 1
    matured_by 1
    executive_type 1
    transaction_type 'cash'
    account_id 1
    lead_id 1
  end
end
