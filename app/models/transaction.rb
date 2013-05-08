class Transaction < ActiveRecord::Base
    has_many :transaction_field_values
    has_many :contacts, :as => :contactable
    belongs_to :company

    attr_accessible :amount, :transaction_time, :company_id, :contact_type

    accepts_nested_attributes_for :contacts, :allow_destroy => true
    attr_accessible :contacts_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type

    validates :company_id, :presence => true

    def full_name
        @contacts_list = String.new
        self.contacts.each do |contact|
            @contacts_list = @contacts_list + "#{contact.first_name.capitalize} #{contact.middle_name.capitalize} #{contact.last_name.capitalize}"
        end
            @contacts_list
    end
end
