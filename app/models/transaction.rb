class Transaction < ActiveRecord::Base
    has_many :transaction_field_values
    has_many :contacts, :as => :contactable

    attr_accessible :amount, :contact_id, :transaction_time
end
