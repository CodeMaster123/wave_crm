class User < ActiveRecord::Base
  attr_accessible :address, :first_name, :last_name, :mobile_no
end
