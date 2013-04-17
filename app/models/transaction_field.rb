class TransactionField < ActiveRecord::Base
    belongs_to :user
    has_many :transaction_field_values
    attr_accessible :field_name, :user_id
end
