class CallLog < ActiveRecord::Base
  attr_accessible :call_duration, :call_owner_id, :call_purpose, :call_result, :call_start_time, :call_type, :subject
end
