class CreateLeadsProducts < ActiveRecord::Migration
  def change
    create_table :leads_products do |t|
      t.integer :lead_id
      t.integer :product_id

      t.timestamps
    end
  end
end
