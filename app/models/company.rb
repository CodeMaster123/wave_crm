class Company < ActiveRecord::Base
    has_many :users
    has_many :contacts
    has_many :team_leaders
    has_many :sales_executives
    has_many :tags
    has_many :products
    has_many :notifications
    has_many :leads
    has_many :follow_ups
    has_many :events
    has_many :targets
    has_many :transactions

    belongs_to :crm_customer
    attr_accessible :company_address, :company_name, :contact_number1, :contact_number2, :crm_customer_id

    validates :contact_number1, :numericality => true
    validates :contact_number2, :numericality => true
    validates :company_name, :presence => true
    validates :company_address, :presence => true
    validates :crm_customer_id, :uniqueness => true

end
