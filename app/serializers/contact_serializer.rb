class ContactSerializer < ActiveModel::Serializer
  attributes :id, :address, :first_name, :landline_no, :last_name, :latitude, :longitude, :middle_name, :mobile_no, :contactable_type, :contactable_id, :company_id, :email_id, :contact_relationship, :account_id

end
