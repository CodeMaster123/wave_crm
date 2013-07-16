class AddOpeningDateToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :opening_date, :timestamp
  end
end
