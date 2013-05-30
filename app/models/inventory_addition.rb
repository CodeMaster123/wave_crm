class InventoryAddition < ActiveRecord::Base
    attr_accessible :addition_date, :product_id, :quantity, :company_id

    belongs_to :product

    validates :product_id, :presence => true
    validates :quantity, :presence => true
    validates :addition_date, :presence => true
end
