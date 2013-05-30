class AddIsMaturedToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :is_matured, :boolean
  end
end
