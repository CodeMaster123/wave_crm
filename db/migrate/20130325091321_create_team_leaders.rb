class CreateTeamLeaders < ActiveRecord::Migration
  def change
    create_table :team_leaders do |t|
      t.integer :employee_id
      t.integer :user_id

      t.timestamps
    end
  end
end
