class Lead < ActiveRecord::Base
    has_many :contacts, :dependent=>:destroy
    has_many :contacts, :as => :contactable

    has_many :products, :through => :product_transactions
    has_many :product_transactions

    has_many :call_logs, :dependent => :destroy
    has_one :account

    belongs_to :user
    belongs_to :company

    accepts_nested_attributes_for :products, :allow_destroy => true
    accepts_nested_attributes_for :product_transactions, :allow_destroy => true
    accepts_nested_attributes_for :contacts, :allow_destroy => true
    accepts_nested_attributes_for :account

    attr_accessible :description, :executive_id, :title, :leadable_id, :leadable_type, :company_id, :lead_source, :lead_status, :matured, :matured_at, :opening_date, :user_id
    attr_accessible :product_transactions_attributes, :product_id, :matured_at
    attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no
    attr_accessible :account, :account_attributes

    #validates :description, :presence => true
    validates :company_id, :presence => true

    after_create :post_processing

    #def lead_by
    #    @user = self.leadable.user
    #    "#{@user.first_name}  #{@user.last_name}"
    #end

    def post_processing
        unless self.account.nil?
            self.account.update_attributes(:account_owner => self.contacts.last.id)
            self.contacts.last.update_attributes(:account_id => self.account.id, :contact_relationship => "client")

            self.account.contacts.each do |acc|
                acc.update_attributes(:contact_relationship => "client")
            end
        end
    end
end
