class Inventory < ActiveRecord::Base
    belongs_to :product
    belongs_to :company
    has_many :inventory_additions, :dependent => :destroy

    attr_accessible :product_id, :quantity, :company_id

    validates :product_id, :presence => true
    validates :quantity, :presence => true
end
