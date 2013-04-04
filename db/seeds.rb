User.create([
            {:email => "admin@gmail.com", :password => "admin123", :password_confirmation => "admin123", :account_type => "1"},
            {:email => "team_leader@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => "2"},
            {:email => "sales_executive1@gmail.com", :password => "sales_executive123", :password_confirmation => "sales_executive123", :account_type => "3"},
            {:email => "sales_executive2@gmail.com", :password => "sales_executive1123", :password_confirmation => "sales_executive1123", :account_type => "3"},
            {:email => "team_leader2@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => "2"},
            {:email => "sales_executive3@gmail.com", :password => "sales_executive123", :password_confirmation => "sales_executive123", :account_type => "3"},
            {:email => "sales_executive4@gmail.com", :password => "sales_executive1123", :password_confirmation => "sales_executive1123", :account_type => "3"}
])

TeamLeader.create([
                  {:user_id => 2, :employee_id => 2},
                  {:user_id => 5, :employee_id => 5}
])

SalesExecutive.create([
                      {:team_leader_id =>1, :user_id =>3, :employee_id =>3},
                      {:team_leader_id =>1, :user_id =>4, :employee_id =>4},
                      {:team_leader_id =>2, :user_id =>6, :employee_id =>6},
                      {:team_leader_id =>2, :user_id =>7, :employee_id =>7}
])
