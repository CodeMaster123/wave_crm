class TargetSerializer < ActiveModel::Serializer
  attributes :id, :achived, :amount, :company_id, :target_month, :target_year, :user_id
end
