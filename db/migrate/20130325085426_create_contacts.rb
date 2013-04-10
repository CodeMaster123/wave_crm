class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.float :longitude
      t.float :latitude
      t.string :address
      t.integer :mobile_no
      t.integer :landline_no
      t.integer :contact_type
      t.integer :lead_id

      t.timestamps
    end
  end
end
