class LeadSerializer < ActiveModel::Serializer
    attributes :id, :description, :title, :company_id, :lead_source, :lead_status, :matured, :matured_at, :opening_date, :user_id
end
