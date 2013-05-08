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
      t.string :contactable_type
      t.integer :contactable_id
      t.integer :company_id
      

      #t.string :contact_type

      t.timestamps
    end
  end
end
