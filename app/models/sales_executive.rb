class SalesExecutive < ActiveRecord::Base
  attr_accessible :employee_id, :team_leader_id, :user_id

  has_many :leads, :as => :leadable
  belongs_to :user
  belongs_to :team_leader
end
