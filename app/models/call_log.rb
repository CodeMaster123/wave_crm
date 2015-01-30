class CallLog < ActiveRecord::Base
    belongs_to :lead
    belongs_to :contact
    belongs_to :user

    attr_accessible :call_duration, :call_purpose, :call_result, :call_start_time, :call_type, :subject, :lead_id, :contact_id, :user_id

    validates :call_purpose, :presence => true
    validates :call_type, :presence => true
    validates :call_start_time, :presence => true
    validates :contact_id, :presence => true
    validates :call_duration, :presence => true

    def call_by
        self.user.full_name
    end
end
