class User < ActiveRecord::Base
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    has_many :tasks, :dependent => :destroy
    has_many :targets, :dependent => :destroy
    has_many :leads, dependent: :destroy
    has_many :call_logs
    belongs_to :company
    has_many :notifications, :dependent => :destroy

    has_attached_file :avatar,
        :styles => {:thumb => "27x27#" }, :whiny => false,
        :default_url => "/system/missing.png",
        :url  => "/system/:attachment/:id/:style/:basename.:extension",
        :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"

    attr_accessible :email, :password, :password_confirmation, :remember_me, :account_type
    attr_accessible :address, :first_name, :last_name, :mobile_no, :team_leader, :avatar, :company_id, :team_leader_id

    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :address, :presence => true
    validates :mobile_no, :numericality => true, :uniqueness => true, length: {minimum: 6, maximum: 10}
    validates :email, :uniqueness => true, format: {with: /\@/, message: 'Not a valid email ID'}
    validates :account_type, :presence => true
    validates :company_id, :presence => true


    def role_symbols
        if self.account_type == 1
            return [:admin]
        elsif self.account_type == 2
            return [:team_leader]
        elsif self.account_type == 3
            return [:sales_executive]
        elsif self.account_type == 4
            return [:superadmin]
        end
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def targets_by_account
      if self.account_type == 1
        target = self.admin_target_list
      elsif self.account_type == 2
        target = self.team_leader_target_list
      elsif self.account_type == 3
        target = self.targets.where(:target_month => Date.today.month, :target_year => Date.today.year).first
        target = self.targets.create(company_id: user.company_id) if target.nil?
      end
      target
    end

    def admin_target_list
      users = User.includes(:targets).where(account_type: [2,3], company_id: self.company_id)
      User.iterate_over_targets(users)

    end

    def self.iterate_over_targets(users)
      targets = Array.new
      users.each_with_index do |user, i|
        targets[i] = user.targets.where(:target_month => Date.today.month, :target_year => Date.today.year).first
        targets[i] = user.targets.create(company_id: user.company_id) if targets[i].nil?
      end
      targets
    end

    def team_leader_target_list
      users = [self, self.sales_executives].flatten
      User.iterate_over_targets(users)
    end

    def sales_executives
      User.where(team_leader_id: self.id)
    end
end
