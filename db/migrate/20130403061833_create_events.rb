class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.datetime :starts_at
      t.text :description
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end

        add_index :events, :company_id
        add_index :events, :user_id
  end

  def self.down
    drop_table :events
  end
end
