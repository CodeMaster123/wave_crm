class Target < ActiveRecord::Base
  has_many :leads, :as => :leadable
  belongs_to :targetable, :polymorphic => true

  attr_accessible :achived, :amount, :target_date, :targetable_id, :targetable_type
end
