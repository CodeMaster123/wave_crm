class ProductTransaction < ActiveRecord::Base
    attr_accessible :price, :product_id, :transaction_id, :lead_id, :quantity

    belongs_to :lead
    belongs_to :product
    belongs_to :crm_transaction

    validates :price, :presence => true
    validates :quantity, :presence => true
end
