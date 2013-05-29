class Product < ActiveRecord::Base
  attr_accessible :description, :max_cost, :min_cost, :name, :company_id

  has_many :leads_products
  has_many :leads, :through => :leads_products
  has_one :inventory
  has_many :inventory_additions
  has_many :product_transactions
  has_many :transactions, :through => :product_transactions
  belongs_to :company

  validates :company_id, :presence => true
  validates :description, :presence => true
  validates :max_cost, :presence => true, :numericality => true
  validates :min_cost, :presence => true, :numericality => true
  validates :name, :presence => true

end
