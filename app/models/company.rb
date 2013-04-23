class Company < ActiveRecord::Base
    has_many :users
    has_many :contacts
    has_many :team_leaders
    has_many :sales_executives
    has_many :tags
    has_many :products

    attr_accessible :admin_id, :company_address, :company_name, :contact_number1, :contact_number2

    validates :admin_id, :uniqueness => true
    validates :admin_id, :numericality => true

    validates :contact_number1, :numericality => true
    validates :contact_number2, :numericality => true
    validates :company_name, :presence => true
    validates :company_address, :presence => true

    def admin
        User.where(:id => self.admin_id).first
    end
end
