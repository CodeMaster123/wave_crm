class Transaction < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}

    has_many :contacts, :as => :contactable, :dependent => :destroy
    has_many :product_transactions, :dependent => :destroy
    has_many :products, :through => :product_transactions
    has_many :partial_payments, :dependent => :destroy
    belongs_to :company
    belongs_to :account
    #belongs_to :lead

    attr_accessible :amount, :transaction_time, :company_id, :contact_id, :transaction_type, :micr_code, :matured_by, :executive_type, :account_id

    accepts_nested_attributes_for :contacts, :allow_destroy => true
    accepts_nested_attributes_for :product_transactions, :allow_destroy => true
    accepts_nested_attributes_for :partial_payments #, :allow_destroy => true

    attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type
    attr_accessible :product_transactions_attributes
    attr_accessible :contacts_attributes
    attr_accessible :partial_payments_attributes

    validates :company_id, :presence => true
    validates :amount, :presence => true
    validates :transaction_time, :presence => true
    validates :transaction_type, :presence => true
    validates :account_id, :presence => true

    after_create :post_processing

    def post_processing
        #Change lead's status to matured
        unless self.product_transactions.first.nil?
            @lead = self.product_transactions.first.lead
        end
        unless @lead.nil?
            unless self.product_transactions.first.lead.nil?
                @lead.update_attributes(:lead_status => "matured")
            end

            if @lead.leadable_type == "TeamLeader"
                @current_target = TeamLeader.find(@lead.leadable_id).targets.where(:target_month => Date.today.month, :target_year => Date.today.year).first
            else
                @current_target = SalesExecutive.find(@lead.leadable_id).targets.where(:target_month => Date.today.month, :target_year => Date.today.year).first
            end
            if @current_target.nil?
                @current_target = Target.create(:targetable_id => @lead.leadable_id, :targetable_type =>@lead.leadable_type, :amount =>0, :achived => 0,:company_id => self.company_id, :target_month => Date.today.month, :target_year => Date.today.year)
            end
            @current_target.update_attributes(:achived => @current_target.achived+self.amount)
        end
        #Increase executive's target
    end

    def full_name
        @contact = Contact.where(:id => self.contact_id).first.full_name
    end
end
