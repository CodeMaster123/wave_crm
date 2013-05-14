class TeamLeader < ActiveRecord::Base
  attr_accessible :employee_id, :user_id, :company_id

  has_many :leads, :as => :leadable
  has_many :targets, :as => :targetable
  belongs_to :user
  has_many :sales_executives

  belongs_to :company
  validates :company_id, :presence => true

  def current_target
      self.targets.where("start_target_date >= \"#{Date.today.at_beginning_of_month}\" and end_target_date <= \"#{Date.today.at_end_of_month}\"").first
  end
end
