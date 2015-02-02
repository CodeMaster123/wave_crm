FactoryGirl.define do
  factory :call_log do
    call_result 'requirement for website'
    subject 'call for demo'
    call_type 'Inbound'
    call_purpose 'Support'
    call_start_time Time.now-2.hours
    call_duration 50
    lead_id 1
    user_id 1
    contact_id 1
  end
end
