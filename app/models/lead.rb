class Lead < ActiveRecord::Base
  has_many :contacts, :dependent=>:destroy
  has_many :follow_ups
  belongs_to :leadable, :polymorphic => true

  attr_accessible  :description, :executive_id, :lead_by, :title, :leadable_id, :leadable_type
  attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type

  accepts_nested_attributes_for :contacts, :allow_destroy => true
end
