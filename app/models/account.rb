class Account < ActiveRecord::Base
  attr_accessible :account_name, :account_owner, :billing_address, :number_of_employees, :ownership_type, :phone_number, :shipping_address, :website, :company_id, :is_matured, :lead_id

  belongs_to :lead
  belongs_to :company
  has_many :contacts
  has_many :transactions

  validates :account_name, :presence => true
  validates :phone_number, :presence => true, length: {minimum: 5, maximum: 10}
  validates :billing_address, :presence => true
  validates :website, :allow_blank => false, format: {with: /\./, message: 'Not a valid domain name'}
end
