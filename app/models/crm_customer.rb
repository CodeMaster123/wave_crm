class CrmCustomer < ActiveRecord::Base
  attr_accessible :address, :amount_paid, :first_name, :last_name, :middle_name, :subscription_ends, :subscription_start, :customer_type

  has_one :company

  validates :address, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :amount_paid, :presence => true
  validates :subscription_start, :presence => true
  validates :subscription_ends, :presence => true
  validate :customer_type, :presence => true

  accepts_nested_attributes_for :company
  attr_accessible :company, :company_attributes

end
