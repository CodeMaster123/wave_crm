class ProductTransaction < ActiveRecord::Base
    attr_accessible :price, :product_id, :transaction_id

    belongs_to :product
    belongs_to :transaction
end
