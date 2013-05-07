class User < ActiveRecord::Base
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    has_one :team_leader
    has_one :sales_executive
    has_many :events
    has_one :notification_setting
    has_many :transaction_fields
    belongs_to :company

    belongs_to :company


    has_attached_file :avatar,
        :styles => {:thumb => "27x27#" }, :whiny => false,
        :default_url => "/system/missing.png",
        :url  => "/system/:attachment/:id/:style/:basename.:extension",
        :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"

    attr_accessible :email, :password, :password_confirmation, :remember_me, :account_type
    attr_accessible :address, :first_name, :last_name, :mobile_no, :team_leader, :avatar, :company_id

    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :address, :presence => true
    validates :mobile_no, :presence => true, :numericality => true
    validates :email, :presence => true
    validates :password, :presence => true
    validates :password_confirmation, :presence => true
    validates :account_type, :presence => true

    after_create :create_notification_setting

    def role_symbols
        if self.account_type == 1
            return ["admin".to_sym]
        elsif self.account_type == 2
            return ["team_leader".to_sym]
        elsif self.account_type == 3
            return ["sales_executive".to_sym]
        elsif self.account_type == 4
            return ["superadmin".to_sym]
        else
            [:none]
        end
    end

    def create_notification_setting
        puts "after create executed"
        NotificationSetting.create(:user_id => self.id, :notification_flag => false)
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
