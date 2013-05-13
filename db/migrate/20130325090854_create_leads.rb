class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :title
      t.string :description
      t.integer :leadable_id
      t.string :leadable_type
      t.boolean :matured
      t.timestamp :matured_at
      t.integer :company_id

      t.timestamps
    end
  end
end
