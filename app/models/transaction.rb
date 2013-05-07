class Transaction < ActiveRecord::Base
    has_many :transaction_field_values
    has_many :contacts, :as => :contactable
    belongs_to :company

    attr_accessible :amount, :contact_id, :transaction_time, :company_id, :contact_type

    accepts_nested_attributes_for :contacts, :allow_destroy => true
    attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type


    validates :company_id, :presence => true

    def full_name
        "#{self.first_name} #{self.middle_name} #{self.last_name}"
    end
end
