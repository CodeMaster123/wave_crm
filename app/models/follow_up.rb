class FollowUp < ActiveRecord::Base
    belongs_to :leads
    belongs_to :company
    attr_accessible :description, :follow_up_time, :lead_id, :company_id

    validates :company_id, :presence => true
end
