class Employee < ActiveRecord::Base
  attr_accessible :address, :age, :first_name, :last_name, :middle_name, :mobile_no, :sales_executve_id, :team_leader_id
end
