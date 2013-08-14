class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :mobile_no, :limit => 8
      t.string :address
      t.integer :age
      t.integer :team_leader_id
      t.integer :sales_executve_id

      t.timestamps
    end
  end
end
