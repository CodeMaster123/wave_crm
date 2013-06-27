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
  validates :name, :presence => true, :uniqueness => {:scope => :company_id}

  after_save :create_empty_inventory

  def create_empty_inventory
      puts "vivek"
      @empty_inventory = self.build_inventory
      puts @empty_inventory.product_id
      @empty_inventory.company_id = self.company_id
      puts @empty_inventory.company_id
      @empty_inventory.quantity = 0
      puts @empty_inventory.quantity
      @empty_inventory.save

  end
end
