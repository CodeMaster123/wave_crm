class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :title
      t.string :description
      t.integer :contact_id
      t.integer :executive_id
      t.integer :lead_by

      t.timestamps
    end
  end
end
