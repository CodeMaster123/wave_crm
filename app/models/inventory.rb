class Inventory < ActiveRecord::Base
    belongs_to :product
  attr_accessible :product_id, :quantity
end
