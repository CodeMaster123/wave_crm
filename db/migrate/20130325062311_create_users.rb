class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :mobile_no
      t.integer :account_type

      t.timestamps
    end
  end
end
