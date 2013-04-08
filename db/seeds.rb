User.create([
            {:first_name => "Admin", :last_name => "account", :address => "Near Vinchurkar diagnostics, CBS, Nashik", :mobile_no => 9876674554, :email => "admin@gmail.com", :password => "admin123", :password_confirmation => "admin123", :account_type => 1},
            {:first_name => "Ramesh", :last_name => "Pawar", :address => "Pawan nagar, nashik", :mobile_no => 9973546324, :email => "team_leader@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => 2},
            {:first_name => "Suresh", :last_name => "Kambale", :address => "Uttam nagar, Nashik", :mobile_no => 9912324212, :email => "sales_executive1@gmail.com", :password => "sales_executive123", :password_confirmation => "sales_executive123", :account_type => 3},
            {:first_name => "Ram", :last_name => "Patil", :address => "Panchavati, Nashik", :mobile_no => 9988776677, :email => "sales_executive2@gmail.com", :password => "sales_executive1123", :password_confirmation => "sales_executive1123", :account_type => 3},
            {:first_name => "Jitesh", :last_name => "Kulkarni", :address => "Mhasrul, Nashik", :mobile_no =>9932325434, :email => "team_leader2@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => 2},
            {:first_name => "Rahul", :last_name => "Borade", :address => "Upnagar, Nashik road", :mobile_no => 9878866856, :email => "sales_executive3@gmail.com", :password => "sales_executive123", :password_confirmation => "sales_executive123", :account_type => 3},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "sales_executive4@gmail.com", :password => "sales_executive1123", :password_confirmation => "sales_executive1123", :account_type => 3}
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


Lead.create([
            {:title => "mahindra", :description => "automobile company", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Prakash wines", :description => "wine shoppee", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Gurvindar garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Pravin garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Pravin Patil", :description => "ca", :leadable_id => 2, :leadable_type => "TeamLeader"},

            {:title => "CG", :description => "manufacturing company", :leadable_id => 1, :leadable_type => "salesExecutive"},
            {:title => "GFG advisors", :description => "financial advisors", :leadable_id => 1, :leadable_type => "salesExecutive"},
            {:title => "GFG advisors", :description => "financial advisors", :leadable_id => 1, :leadable_type => "salesExecutive"},
            {:title => "GFG advisors", :description => "financial advisors", :leadable_id => 1, :leadable_type => "salesExecutive"},
            {:title => "GFG advisors", :description => "financial advisors", :leadable_id => 1, :leadable_type => "salesExecutive"},
            {:title => "Kantilal Mehta", :description => "ca", :leadable_id => 1, :leadable_type => "salesExecutive"},
            {:title => "Ramlal Shah", :description => "ca", :leadable_id => 4, :leadable_type => "salesExecutive"}
])

Contact.create([
               {:lead_id => 1, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contact_type => "gdfdgfha"},
               {:lead_id => 2, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contact_type => "gdhgsbfdg"},
               {:lead_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contact_type => "tdgfwedf"},
               {:lead_id => 4, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contact_type => "vtrreas"},
               {:lead_id => 5, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contact_type => "sgfdhgh"},
               {:lead_id => 6, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contact_type => "tdgfwedf"}
])



Target.create([
              {:targetable_id => 1, :targetable_type => 1, :amount => 100000, :achived => 70000},
              {:targetable_id => 1, :targetable_type => 1, :amount => 50000, :achived => 36500},
              {:targetable_id => 2, :targetable_type => 1, :amount => 80000, :achived => 75000},
              {:targetable_id => 2, :targetable_type => 1, :amount => 100000, :achived => 80000},
              {:targetable_id => 1, :targetable_type => 2, :amount => 60000, :achived => 40000},
              {:targetable_id => 1, :targetable_type => 2, :amount => 60000, :achived => 50000},
              {:targetable_id => 2, :targetable_type => 2, :amount => 60000, :achived => 60000},
              {:targetable_id => 2, :targetable_type => 2, :amount => 39000, :achived => 6000},
              {:targetable_id => 3, :targetable_type => 2, :amount => 58000, :achived => 35000},
              {:targetable_id => 3, :targetable_type => 2, :amount => 56000, :achived => 25000},
              {:targetable_id => 4, :targetable_type => 2, :amount => 62000, :achived => 61350},
              {:targetable_id => 4, :targetable_type => 2, :amount => 61520, :achived => 44582}
])

Event.create([
             {:title => "Meeting", :starts_at => "2013-04-08 06:17:00 UTC", :ends_at => "2013-04-08 06:17:00 UTC", :all_day => "true", :description => "This meeting for web application demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-06 07:17:00 UTC", :ends_at => "2013-04-06 08:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-04 01:17:00 UTC", :ends_at => "2013-04-04 02:17:00 UTC", :all_day => "true", :description => "application demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-05 012:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},

             {:title => "Meeting", :starts_at => "2013-04-02 02:17:00 UTC", :ends_at => "2013-04-02 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 2},
             {:title => "Appoitement", :starts_at => "2013-04-02 01:17:00 UTC", :ends_at => "2013-04-02 01:30:00 UTC", :all_day => "true", :description => "This meeting for website  documentation", :user_id => 2},
             {:title => "Appoitement", :starts_at => "2013-04-04 01:17:00 UTC", :ends_at => "2013-04-04 01:30:00 UTC", :all_day => "false", :description => "This meeting for website  documentation", :user_id => 2},
             {:title => "Appoitement", :starts_at => "2013-04-06 01:17:00 UTC", :ends_at => "2013-04-06 01:30:00 UTC", :all_day => "false", :description => "This meeting for website  documentation", :user_id => 2},

             {:title => "Appoitement", :starts_at => "2013-04-01 02:17:00 UTC", :ends_at => "2013-04-01 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 3},
             {:title => "Meeting", :starts_at => "2013-04-08 02:17:00 UTC", :ends_at => "2013-04-08 03:17:00 UTC", :all_day => "false", :description => "Customer satisfaction", :user_id => 3},
             {:title => "Appoitement", :starts_at => "2013-04-04 02:17:00 UTC", :ends_at => "2013-04-04 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 3},
             {:title => "Appoitement", :starts_at => "2013-04-06 02:17:00 UTC", :ends_at => "2013-04-06 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 3},
])