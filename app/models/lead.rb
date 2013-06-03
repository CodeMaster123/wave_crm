class Lead < ActiveRecord::Base
    has_many :contacts, :dependent=>:destroy
    has_many :follow_ups
    has_many :contacts, :as => :contactable
    has_many :leads_products
    has_many :events
    has_many :products, :through => :leads_products
    has_many :call_logs
    has_many :product_transactions
    has_one :account

    belongs_to :leadable, :polymorphic => true
    belongs_to :company

    accepts_nested_attributes_for :products, :allow_destroy => true
    accepts_nested_attributes_for :leads_products, :allow_destroy => true
    accepts_nested_attributes_for :contacts, :allow_destroy => true
    accepts_nested_attributes_for :follow_ups, :allow_destroy => true
    accepts_nested_attributes_for :account

    attr_accessible :leads_products_attributes, :product_id, :matured_at
    attr_accessible :description, :executive_id, :lead_by, :title, :leadable_id, :leadable_type, :company_id
    attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no
    attr_accessible :follow_ups_attributes, :description, :follow_up_time, :lead_id
    attr_accessible :account, :account_attributes

    validates :description, :presence => true
    validates :company_id, :presence => true

    after_create :assign_account_owner

    def lead_by
        @user = self.leadable.user
        "#{@user.first_name}  #{@user.last_name}"
    end

    def show_executive_type
        if self.leadable_type == "TeamLeader"
            "Team Leader"
        elsif self.leadable_type == "SalesExecutive"
            "Sales Executive"
        end
    end

    def assign_account_owner
        self.account.update_attributes(:account_owner => self.contacts.last.id)
    end
end
