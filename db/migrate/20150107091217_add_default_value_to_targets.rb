class AddDefaultValueToTargets < ActiveRecord::Migration
  def change
    change_column :targets, :amount, :integer, default: 0
    change_column :targets, :achived, :integer, default: 0
  end
end
