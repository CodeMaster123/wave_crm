class Target < ActiveRecord::Base
  has_many :leads, :as => :leadable
  belongs_to :company
  belongs_to :user

  attr_accessible :achived, :amount, :company_id, :target_month, :target_year, :user_id

  validates :achived, :presence => true, :numericality => true
  validates :company_id, :presence => true
  validates :amount, :presence => true, :numericality => true
  validates :target_month, :uniqueness => {:scope => [:user_id, :target_year]}, :presence => true
  validates :target_year, :presence => true

  def full_name
      "#{self.user.first_name} #{self.user.last_name}"
  end
end
