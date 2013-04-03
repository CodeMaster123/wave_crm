class FollowUp < ActiveRecord::Base
    belongs_to :leads
  attr_accessible :description, :follow_up_time, :lead_id
end
