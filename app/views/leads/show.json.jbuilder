json.lead do
  json.title @lead.title
  json.description @lead.description
  json.lead_source @lead.lead_source
  json.lead_status @lead.lead_status
  json.user_full_name @lead.user.full_name
end

json.products @lead.product_transactions do |product_transaction|
  json.name product_transaction.product.name
  json.quantity product_transaction.quantity
  json.price product_transaction.price
end

json.call_logs @lead.call_logs do |call_log|
  json.call_purpose call_log.call_purpose
  json.call_start_time call_log.call_start_time
  json.call_duration call_log.call_duration
  json.call_type call_log.call_type
  json.call_result call_log.call_result
  json.subject call_log.subject

  json.call_to call_log.contact.full_name
  json. call_by call_log.user.full_name
end

json.previous_meetings @previous_meetings do |previous_meeting|
  json.title previous_meeting.title
  json.meeting_with previous_meeting.contact.full_name
  json.executive previous_meeting.user.full_name
  json.starts_at previous_meeting.starts_at
  json.description previous_meeting.description
end

json.future_meetings @future_meetings do |future_meeting|
  json.title future_meeting.title
  json.meeting_with future_meeting.contact.full_name
  json.executive future_meeting.user.full_name
  json.starts_at future_meeting.starts_at
  json.description future_meeting.description
end

json.notifications @notifications do |notification|
  json.subject notification.subject
  json.body notification.body
  json.notification_time notification.notification_time
end
