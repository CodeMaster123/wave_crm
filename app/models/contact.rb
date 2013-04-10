class Contact < ActiveRecord::Base
  attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type

  has_many :notifications
  belongs_to :lead

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :middle_name, :presence => true
  validates :address, :presence => true
  validates :mobile_no, :presence => true, :numericality => true
  validates :landline_no, :presence => true, :numericality => true
end
