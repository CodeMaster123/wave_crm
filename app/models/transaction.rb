class Transaction < ActiveRecord::Base
    has_many :transaction_field_values
    has_one :contact, :as => :contactable
    belongs_to :company

    attr_accessible :amount, :transaction_time, :company_id, :contact_type

    accepts_nested_attributes_for :contact, :allow_destroy => true
    attr_accessible :contact_attributes, :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type


    validates :company_id, :presence => true

    def full_name
        @user = self.contact
        "#{@user.first_name.capitalize} #{@user.middle_name.capitalize} #{@user.last_name.capitalize}"
    end
end
