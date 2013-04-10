class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :min_cost
      t.float :max_cost
      t.string :description

      t.timestamps
    end
  end
end
