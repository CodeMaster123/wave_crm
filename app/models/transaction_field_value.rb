class TransactionFieldValue < ActiveRecord::Base
    belongs_to :transaction
    belongs_to :transaction_field
    attr_accessible :transaction_field_id, :transaction_field_value, :transaction_id
end
