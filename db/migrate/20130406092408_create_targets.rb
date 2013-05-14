class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.integer :targetable_id
      t.string :targetable_type
      t.integer :amount
      t.integer :achived
      t.integer :company_id
      t.integer :target_month
      t.integer :target_year

      t.timestamps

    end
  end
end
