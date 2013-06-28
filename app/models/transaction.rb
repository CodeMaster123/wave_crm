class Transaction < ActiveRecord::Base
    has_many :transaction_field_values
    has_many :contacts, :as => :contactable, :dependent => :destroy
    has_many :product_transactions
    has_many :products, :through => :product_transactions
    belongs_to :company
    belongs_to :account

    attr_accessible :amount, :transaction_time, :company_id, :contact_id, :transaction_type, :micr_code, :matured_by, :executive_type, :account_id

    accepts_nested_attributes_for :contacts, :allow_destroy => true
    accepts_nested_attributes_for :product_transactions, :allow_destroy => true

    attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type
    attr_accessible :product_transactions_attributes
    attr_accessible :contacts_attributes

    validates :company_id, :presence => true
    validates :amount, :presence => true
    validates :transaction_time, :presence => true
    validates :transaction_type, :presence => true
    validates :account_id, :presence => true


    def full_name
        @contact = Contact.where(:id => self.contact_id).first.full_name
    #    @contacts_list = String.new
    #    self.contacts.each do |contact|
    #        @contacts_list = @contacts_list + "#{contact.first_name.capitalize} #{contact.middle_name.capitalize} #{contact.last_name.capitalize}"
    #    end
    #        @contacts_list
    end

end
