class ChangeStartsAtToStart < ActiveRecord::Migration
  def change
    rename_column :tasks, :starts_at, :start
  end
end
