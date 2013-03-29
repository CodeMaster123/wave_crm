class Contact < ActiveRecord::Base
  attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type

  belongs_to :lead

end
