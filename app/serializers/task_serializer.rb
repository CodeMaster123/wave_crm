class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start, :user_id, :company_id, :contact_id

  has_one :contact, embed_in_root: true
end
