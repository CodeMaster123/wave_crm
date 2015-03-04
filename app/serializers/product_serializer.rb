class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :max_cost, :min_cost, :name, :company_id, :quantity
end
