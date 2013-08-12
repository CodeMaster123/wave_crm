class User < ActiveRecord::Base
    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    has_one :team_leader, :dependent => :destroy
    has_one :sales_executive, :dependent => :destroy
    has_many :events, :dependent => :destroy
    has_one :notification_setting, :dependent => :destroy
    belongs_to :company

    #belongs_to :company
    #after_create :update_executive


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
    validates :mobile_no, :numericality => true
    validates :email, :uniqueness => true
    validates :password, :presence => true
    validates :password_confirmation, :presence => true
    validates :account_type, :presence => true
    validates :company_id, :presence => true


    after_save :create_notification_setting

    def role_symbols
        if self.account_type == 1
            return [:admin]
        elsif self.account_type == 2
            return [:team_leader]
        elsif self.account_type == 3
            return [:sales_executive]
        elsif self.account_type == 4
            return [:superadmin]
        else
            [:none]
        end
    end

    def create_notification_setting
        NotificationSetting.create(:user_id => self.id, :notification_flag => false)
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    #def update_executive
    #    if self.account_type == 2 #team leader
    #        TeamLeader.create(:user_id => self.id, :company_id => self.company_id)
    #    elsif self.account_type == 3 #sales executive
    #        self.sales_executive.update_attributes(:user_id => self.id)
    #    end
    #end
end
