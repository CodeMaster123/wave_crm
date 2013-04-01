class CreateSalesExecutives < ActiveRecord::Migration
  def change
    create_table :sales_executives do |t|
      t.integer :employee_id
      t.integer :team_leader_id

      t.timestamps
    end
  end
end
