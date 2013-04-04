class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :title
      t.string :description
      t.integer :leadable_id
      t.string :leadable_type

      t.timestamps
    end
  end
end
