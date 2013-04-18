class Lead < ActiveRecord::Base
  has_many :contacts, :dependent=>:destroy
  has_many :follow_ups
  belongs_to :leadable, :polymorphic => true

  has_many :contacts, :as => :contactable

  has_many :leads_products
  has_many :products, :through => :leads_products

  accepts_nested_attributes_for :products, :allow_destroy => true

  accepts_nested_attributes_for :leads_products, :allow_destroy => true
  attr_accessible :leads_products_attributes, :product_id

  attr_accessible  :description, :executive_id, :lead_by, :title, :leadable_id, :leadable_type
  attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type

  accepts_nested_attributes_for :contacts, :allow_destroy => true

  attr_accessible :follow_ups_attributes, :description, :follow_up_time, :lead_id
  accepts_nested_attributes_for :follow_ups, :allow_destroy => true

  validates :title, :presence => true
  validates :description, :presence => true

end
