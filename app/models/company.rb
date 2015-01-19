class Company < ActiveRecord::Base
    has_many :users
    has_many :contacts
    has_many :tags
    has_many :products
    has_many :notifications
    has_many :leads
    has_many :events
    has_many :targets
    has_many :transactions
    has_many :accounts

    attr_accessible :company_address, :company_name, :contact_number1, :contact_number2

    validates :contact_number1, :numericality => true
    validates :contact_number2, :numericality => true
    validates :company_name, :presence => true
    validates :company_address, :presence => true

    def sales_users
      self.users.where("account_type = 2 OR account_type = 3")
    end

    def team_leaders
      self.users.where('account_type = 2')
    end

    def sales_executives
      self.users.where('account_type = 3')
    end
end
