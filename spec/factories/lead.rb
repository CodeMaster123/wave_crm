FactoryGirl.define do
  factory :lead do
    id 1
    title 'Prakash chemicals pvt ltd'
    description 'Chemical factory'
    leadable_id 1
    leadable_type 'TeamLeader'
    matured false
    matured_at nil
    company_id 1
    lead_source 'cold_call'
    lead_status 'Lead'
    opening_date Date.today+10.days
  end
end
