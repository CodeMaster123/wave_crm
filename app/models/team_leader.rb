class TeamLeader < ActiveRecord::Base
    attr_accessible :employee_id, :user_id, :company_id

    has_many :leads, :as => :leadable
    has_many :call_logs, :as => :call_loggable, :dependent => :destroy
    has_many :targets, :as => :targetable, :dependent => :destroy
    belongs_to :user
    has_many :sales_executives

    belongs_to :company
    validates :company_id, :presence => true

    def current_target
        self.targets.where(:target_month => Date.today.month, :target_year => Date.today.year).first
    end
end
