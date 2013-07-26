class InventoryAddition < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}


    belongs_to :product

    attr_accessible :addition_date, :product_id, :quantity, :company_id, :inventory_id

    validates :product_id, :presence => true
    validates :quantity, :presence => true
    validates :addition_date, :presence => true
end
