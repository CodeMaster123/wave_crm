class CreateSpecialOccasions < ActiveRecord::Migration
  def change
    create_table :special_occasions do |t|
      t.string :title
      t.string :body
      t.date :occasion_date

      t.timestamps
    end
  end
end
