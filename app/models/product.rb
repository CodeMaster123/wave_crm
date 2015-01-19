class Product < ActiveRecord::Base
  attr_accessible :description, :max_cost, :min_cost, :name, :company_id, :quantity

  has_many :inventory_additions, :dependent => :destroy
  has_many :product_transactions, :dependent => :destroy
  has_many :transactions, :through => :product_transactions
  belongs_to :company

  validates :company_id, :presence => true
  validates :description, :presence => true
  validates :max_cost, :presence => true, :numericality => true
  validates :min_cost, :presence => true, :numericality => true
  validates :name, :presence => true, :uniqueness => {:scope => :company_id}
end
