class TeamLeader < ActiveRecord::Base
  attr_accessible :employee_id, :user_id

  belongs_to :user
  has_many :sales_executives
end
