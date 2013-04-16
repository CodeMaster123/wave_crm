class Transaction < ActiveRecord::Base
  attr_accessible :amount, :contact_id, :transaction_time
end
