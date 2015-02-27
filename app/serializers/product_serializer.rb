class ProductSerializer < ActiveModel::Serializer
  attributes :description, :max_cost, :min_cost, :name, :company_id, :quantity
end
