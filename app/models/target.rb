class Target < ActiveRecord::Base
  has_many :leads, :as => :leadable
  belongs_to :targetable, :polymorphic => true
  belongs_to :company

  attr_accessible :achived, :amount, :target_date, :targetable_id, :targetable_type, :company_id

  validates :company_id, :presence => true
end
