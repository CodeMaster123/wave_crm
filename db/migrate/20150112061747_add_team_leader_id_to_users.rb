class AddTeamLeaderIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :team_leader_id, :integer, defaults: 0
  end
end
