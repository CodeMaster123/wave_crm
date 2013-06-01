class ProductTransaction < ActiveRecord::Base
    attr_accessible :price, :product_id, :transaction_id, :lead_id, :quantity

    belongs_to :lead
    belongs_to :product
    belongs_to :transaction
end
