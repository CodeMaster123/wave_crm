class Inventory < ActiveRecord::Base
    belongs_to :product
    attr_accessible :product_id, :quantity, :company_id

    validates :product_id, :presence => true
    validates :quantity, :presence => true
end
