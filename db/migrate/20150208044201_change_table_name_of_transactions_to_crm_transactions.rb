class ChangeTableNameOfTransactionsToCrmTransactions < ActiveRecord::Migration
  def change
    rename_table :transactions, :crm_transactions
  end
end
