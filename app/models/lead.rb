class Lead < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}

    has_many :contacts, :dependent=>:destroy
    has_many :contacts, :as => :contactable
    has_many :leads_products
    has_many :events
    has_many :products, :through => :leads_products
    has_many :call_logs
    has_many :product_transactions
    #has_many :transactions
    has_one :account

    belongs_to :leadable, :polymorphic => true
    belongs_to :company

    accepts_nested_attributes_for :products, :allow_destroy => true
    accepts_nested_attributes_for :leads_products, :allow_destroy => true
    accepts_nested_attributes_for :product_transactions, :allow_destroy => true
    accepts_nested_attributes_for :contacts, :allow_destroy => true
    accepts_nested_attributes_for :account

    attr_accessible :description, :executive_id, :lead_by, :title, :leadable_id, :leadable_type, :company_id, :lead_source, :lead_status, :matured, :matured_at, :opening_date
    attr_accessible :leads_products_attributes, :product_id, :matured_at
    attr_accessible :product_transactions_attributes, :product_id, :matured_at
    attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no
    attr_accessible :account, :account_attributes

    #validates :description, :presence => true
    validates :company_id, :presence => true

    after_create :post_processing

    def lead_by
        @user = self.leadable.user
        "#{@user.first_name}  #{@user.last_name}"
    end

    def show_executive
        if self.leadable_type == "TeamLeader"
            if self.leadable.nil?
                "<b>None</b>"
            else
                "<b>Team Leader</b> - #{self.leadable.user.full_name}"
            end
        elsif self.leadable_type == "SalesExecutive"
            if self.leadable.nil?
                "<b>None</b>"
            else
                "<b>Sales Executive</b> - #{self.leadable.user.full_name}"
            end
        end
    end

    def get_lead_source
        self.lead_source.tr("_"," ").camelcase
    end

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
