class RemoveGmapsFieldFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :gmaps
  end
end
