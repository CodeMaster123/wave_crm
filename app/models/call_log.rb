class CallLog < ActiveRecord::Base
  attr_accessible :call_duration, :call_owner_id, :call_purpose, :call_result, :call_start_time, :call_type, :subject, :lead_id

  validates :call_purpose, :presence => true
  validates :call_type, :presence => true
  validates :call_owner_id, :presence => true
  validates :call_start_time, :presence => true
  #validates :call_duration, :presence => true
end
