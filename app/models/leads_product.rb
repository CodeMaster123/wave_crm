class LeadsProduct < ActiveRecord::Base
  attr_accessible :lead_id, :product_id

  belongs_to :lead
  belongs_to :product
end
