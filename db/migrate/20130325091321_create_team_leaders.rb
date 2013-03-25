class CreateTeamLeaders < ActiveRecord::Migration
  def change
    create_table :team_leaders do |t|
      t.integer :employee_id
      t.integer :lead_id
      t.string :sales_executive_id

      t.timestamps
    end
  end
end
