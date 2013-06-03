class Account < ActiveRecord::Base
  attr_accessible :account_name, :account_owner, :billing_address, :number_of_employees, :ownership_type, :phone_number, :shipping_address, :website, :company_id, :is_matured, :lead_id

  belongs_to :lead
  belongs_to :company
  #has_one :account
  has_many :contacts
  has_many :transactions

  validates :account_name, :presence => true
  #validates :account_name, :presence => true
  #validates :account_name, :presence => true
  validates :phone_number, :presence => true
  validates :billing_address, :presence => true
end
