class ChangeTransactionIdToCrmTransactionId < ActiveRecord::Migration
  def change
    rename_column :partial_payments, :transaction_id, :crm_transaction_id
    rename_column :product_transactions, :transaction_id, :crm_transaction_id
  end
end
