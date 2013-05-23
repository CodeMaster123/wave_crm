class AddContactRelationshipToContacts < ActiveRecord::Migration
  def change
        change_table(:contacts) do |t|
            t.string :contact_relationship
        end
  end
end
