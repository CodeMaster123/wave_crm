class RemoveTargetableFieldsAndAddUserIdToTargets < ActiveRecord::Migration
  def change
    add_column :targets, :user_id, :integer
    remove_column :targets, :targetable_id
    remove_column :targets, :targetable_type
  end
end
