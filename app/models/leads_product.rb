class LeadsProduct < ActiveRecord::Base
  attr_accessible :lead_id, :product_id

  belongs_to :product
  belongs_to :lead


end
