class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :account_type
  attr_accessible :address, :first_name, :last_name, :mobile_no

  def role_symbols
    if self.account_type == 1
      return ["admin".to_sym]
    elsif self.account_type == 2
      return ["team_leader".to_sym]
    elsif self.account_type == 3
      return ["sales_executive".to_sym]
    end
  end
end
