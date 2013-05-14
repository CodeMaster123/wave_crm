class Transaction < ActiveRecord::Base
    has_many :transaction_field_values
    has_many :contacts, :as => :contactable
    has_many :product_transactions
    has_many :products, :through => :product_transactions
    belongs_to :company

    attr_accessible :amount, :transaction_time, :company_id, :contact_id, :transaction_type, :micr_code, :matured_by, :executive_type

    accepts_nested_attributes_for :contacts, :allow_destroy => true
    attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no

    validates :company_id, :presence => true
    validates :amount, :presence => true
    validates :transaction_time, :presence => true
    validates :transaction_type, :presence => true


    def full_name
        @contacts_list = String.new
        self.contacts.each do |contact|
            @contacts_list = @contacts_list + "#{contact.first_name.capitalize} #{contact.middle_name.capitalize} #{contact.last_name.capitalize}"
        end
            @contacts_list
    end

end
