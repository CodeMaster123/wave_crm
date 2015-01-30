class Company < ActiveRecord::Base
    has_many :users, dependent: :destroy
    has_many :contacts, dependent: :destroy
    has_many :products, dependent: :destroy
    has_many :notifications, dependent: :destroy
    has_many :leads, dependent: :destroy
    has_many :events, dependent: :destroy
    has_many :targets, dependent: :destroy
    has_many :transactions, dependent: :destroy
    has_many :accounts, dependent: :destroy

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
