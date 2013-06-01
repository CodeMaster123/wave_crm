class Inventory < ActiveRecord::Base
    belongs_to :product
    has_many :inventory_additions

    attr_accessible :product_id, :quantity, :company_id

    validates :product_id, :presence => true
    validates :quantity, :presence => true

    before_save :default_quantity

    def default_quantity
        self.quantity = 0 if self.quantity.nil?
    end
end
