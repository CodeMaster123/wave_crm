class Target < ActiveRecord::Base
  has_many :leads, :as => :leadable
  belongs_to :targetable, :polymorphic => true
  belongs_to :company

  attr_accessible :achived, :amount, :start_target_date, :targetable_id, :targetable_type, :company_id, :end_target_date

  validates :company_id, :presence => true

  def full_name
      @user = self.targetable.user
      "#{@user.first_name} #{@user.last_name}"
  end
end
