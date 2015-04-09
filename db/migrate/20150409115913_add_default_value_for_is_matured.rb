class AddDefaultValueForIsMatured < ActiveRecord::Migration
  def change
    change_column :accounts, :is_matured, :boolean, default: false
  end
end
