class AddEmailToContact < ActiveRecord::Migration
    def change
        change_table(:contacts) do |t|
            t.string :email_id
        end
    end
end
