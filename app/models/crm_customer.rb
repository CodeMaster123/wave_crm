class CrmCustomer < ActiveRecord::Base
  attr_accessible :address, :amount_paid, :first_name, :last_name, :middle_name, :subscription_ends, :subscription_start
end
