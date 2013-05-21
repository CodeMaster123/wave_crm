class Target < ActiveRecord::Base
  has_many :leads, :as => :leadable
  belongs_to :targetable, :polymorphic => true
  belongs_to :company

  attr_accessible :achived, :amount, :targetable_id, :targetable_type, :company_id, :target_month, :target_year

  validates :achived, :presence => true, :numericality => true
  validates :company_id, :presence => true
  validates :amount, :presence => true, :numericality => true
  validates :target_month, :uniqueness => {:scope => [:targetable_type, :targetable_id, :target_year]}, :presence => true
  validates :target_year, :presence => true
  validates :targetable_type, :presence => true
  validates :targetable_id, :presence => true

  def full_name
      @user = self.targetable.user
      "#{@user.first_name} #{@user.last_name}"
  end
end
