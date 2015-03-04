class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :starts_at, :user_id, :company_id, :contact_id
end
