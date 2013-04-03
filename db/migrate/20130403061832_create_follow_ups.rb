class CreateFollowUps < ActiveRecord::Migration
  def change
    create_table :follow_ups do |t|
      t.integer :lead_id
      t.string :description
      t.timestamp :follow_up_time

      t.timestamps
    end
  end
end
