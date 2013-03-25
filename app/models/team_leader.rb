class TeamLeader < ActiveRecord::Base
  attr_accessible :employee_id, :lead_id, :sales_executive_id
end
