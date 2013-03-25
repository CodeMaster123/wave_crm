class Lead < ActiveRecord::Base
  attr_accessible :contact_id, :description, :executive_id, :lead_by, :title
end
