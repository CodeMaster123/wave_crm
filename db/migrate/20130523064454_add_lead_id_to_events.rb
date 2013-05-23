class AddLeadIdToEvents < ActiveRecord::Migration
    def change
        change_table(:events) do |t|
            t.string :lead_id
        end
    end
end
