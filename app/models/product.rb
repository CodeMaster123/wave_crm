class Product < ActiveRecord::Base
  attr_accessible :description, :max_cost, :min_cost, :name

  has_many :leads_products
end
