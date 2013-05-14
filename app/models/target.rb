class Target < ActiveRecord::Base
  has_many :leads, :as => :leadable
  belongs_to :targetable, :polymorphic => true
  belongs_to :company

  attr_accessible :achived, :amount, :start_target_date, :targetable_id, :targetable_type, :company_id, :end_target_date

  validates :achived, :presence => true, :numericality => true
  validates :company_id, :presence => true
  validates :amount, :presence => true, :numericality => true
  validates :end_target_date, :presence => true
  validates :start_target_date, :uniqueness => { :scope => [:targetable_type, :targetable_id] }
  validates :targetable_type, :targetable_id, :presence => true

  def full_name
      @user = self.targetable.user
      "#{@user.first_name} #{@user.last_name}"
  end
end
