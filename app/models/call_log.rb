class CallLog < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}

    belongs_to :lead
    belongs_to :contact
    belongs_to :call_loggable ,:polymorphic => true

    attr_accessible :call_duration, :call_owner_id, :call_purpose, :call_result, :call_start_time, :call_type, :subject, :lead_id, :contact_id, :call_loggable_id, :call_loggable_type

    validates :call_purpose, :presence => true
    validates :call_type, :presence => true
    validates :call_owner_id, :presence => true
    validates :call_start_time, :presence => true
    validates :contact_id, :presence => true
    #validates :call_duration, :presence => true

    def call_by
        self.call_loggable.user.full_name
    end
end
