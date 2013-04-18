class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable,
        :recoverable, :rememberable, :trackable, :validatable

    # Setup accessible (or protected) attributes for your model
    has_one :team_leader
    has_one :sales_executive
    has_many :events
    has_many :transaction_fields

    has_attached_file :avatar,
        :styles => {:thumb => "27x27#" }, :whiny => false,
        :default_url => "/system/missing.png",
        :url  => "/system/:attachment/:id/:style/:basename.:extension",
        :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"




    attr_accessible :email, :password, :password_confirmation, :remember_me, :account_type
    attr_accessible :address, :first_name, :last_name, :mobile_no, :team_leader, :avatar

    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :address, :presence => true
    validates :mobile_no, :presence => true, :numericality => true
    validates :email, :presence => true
    validates :password, :presence => true
    validates :password_confirmation, :presence => true
    validates :account_type, :presence => true




    def role_symbols
        if self.account_type == 1
            return ["admin".to_sym]
        elsif self.account_type == 2
            return ["team_leader".to_sym]
        elsif self.account_type == 3
            return ["sales_executive".to_sym]
        end
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
