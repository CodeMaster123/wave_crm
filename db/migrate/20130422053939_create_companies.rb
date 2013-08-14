class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_address
      t.integer :contact_number1, :limit => 8
      t.integer :contact_number2, :limit => 8

      t.timestamps
    end
  end
end
