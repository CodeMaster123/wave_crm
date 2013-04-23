class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.integer :targetable_id
      t.string :targetable_type
      t.integer :amount
      t.integer :achived
      t.timestamp :target_date
      t.integer :company_id

      t.timestamps
    end
  end
end
