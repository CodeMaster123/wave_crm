class AccountSerializer < ActiveModel::Serializer
  attributes :id, :account_name, :account_owner, :billing_address, :number_of_employees, :ownership_type, :phone_number, :shipping_address, :website, :company_id, :is_matured, :lead_id
end
