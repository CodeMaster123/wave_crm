class InventoryAddition < ActiveRecord::Base
  attr_accessible :addition_date, :product_id, :quantity

  belongs_to :product
end
