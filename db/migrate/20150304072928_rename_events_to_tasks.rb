class RenameEventsToTasks < ActiveRecord::Migration
  def change
    rename_table :events, :tasks
  end
end
