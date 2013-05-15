class SalesExecutive < ActiveRecord::Base
  attr_accessible :employee_id, :team_leader_id, :user_id, :company_id

  has_many :leads, :as => :leadable
  has_many :targets, :as => :targetable
  belongs_to :user
  belongs_to :team_leader
  belongs_to :company
  validates :company_id, :presence => true

  def current_target
      self.targets.where(:target_month => Date.today.month, :target_year => Date.today.year).first
  end
end
