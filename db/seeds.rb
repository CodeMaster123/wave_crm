User.create([
            {:first_name => "Vijay", :last_name => "gaikwad", :address => "Near Vinchurkar diagnostics, CBS, Nashik", :mobile_no => 9876674554, :email => "admin@gmail.com", :password => "admin123", :password_confirmation => "admin123", :account_type => 1},
            {:first_name => "Vivek", :last_name => "varade", :address => "CBS, Nashik", :mobile_no => 9654658554, :email => "admin456@gmail.com", :password => "admin456", :password_confirmation => "admin456", :account_type => 1},
            {:first_name => "Ramesh", :last_name => "Pawar", :address => "Pawan nagar, nashik", :mobile_no => 9973546324, :email => "team_leader@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => 2},
            {:first_name => "pradip", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "team_leader1@gmail.com", :password => "team_leader1231", :password_confirmation => "sales_executive1231", :account_type => 2},
            {:first_name => "Jitesh", :last_name => "Kulkarni", :address => "Mhasrul, Nashik", :mobile_no =>9932325434, :email => "team_leader2@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => 2},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "team_leader2@gmail.com", :password => "team_leader1232", :password_confirmation => "sales_executive1232", :account_type => 2},

            {:first_name => "Suresh", :last_name => "Kambale", :address => "Uttam nagar, Nashik", :mobile_no => 9912324212, :email => "sales_executive1@gmail.com", :password => "sales_executive1", :password_confirmation => "sales_executive1", :account_type => 3},
            {:first_name => "Ram", :last_name => "Patil", :address => "Panchavati, Nashik", :mobile_no => 9988776677, :email => "sales_executive2@gmail.com", :password => "sales_executive2", :password_confirmation => "sales_executive2", :account_type => 3},
            {:first_name => "Rahul", :last_name => "Borade", :address => "Upnagar, Nashik road", :mobile_no => 9878866856, :email => "sales_executive3@gmail.com", :password => "sales_executive3", :password_confirmation => "sales_executive3", :account_type => 3},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "sales_executive4@gmail.com", :password => "sales_executive4", :password_confirmation => "sales_executive4", :account_type => 3},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "team_leader5@gmail.com", :password => "team_leader5", :password_confirmation => "sales_executive5", :account_type => 3},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "team_leader6@gmail.com", :password => "team_leader6", :password_confirmation => "sales_executive6", :account_type => 3},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "team_leader7@gmail.com", :password => "team_leader7", :password_confirmation => "sales_executive7", :account_type => 3},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "team_leader8@gmail.com", :password => "team_leader8", :password_confirmation => "sales_executive8", :account_type => 3}


])

TeamLeader.create([
                  {:user_id => 3, :employee_id => 3, :company_id => 1},
                  {:user_id => 4, :employee_id => 4, :company_id => 1},
                  {:user_id => 5, :employee_id => 5, :company_id => 2},
                  {:user_id => 6, :employee_id => 6, :company_id => 2}
])

SalesExecutive.create([
                      {:team_leader_id =>1, :user_id =>7, :employee_id =>7, :company_id => 1},
                      {:team_leader_id =>1, :user_id =>8, :employee_id =>8, :company_id => 1},
                      {:team_leader_id =>2, :user_id =>9, :employee_id =>9, :company_id => 1},
                      {:team_leader_id =>2, :user_id =>10, :employee_id =>10, :company_id => 1},
                      {:team_leader_id =>3, :user_id =>11, :employee_id =>11, :company_id => 2},
                      {:team_leader_id =>3, :user_id =>12, :employee_id =>12, :company_id => 2},
                      {:team_leader_id =>4, :user_id =>13, :employee_id =>13, :company_id => 2},
                      {:team_leader_id =>4, :user_id =>14, :employee_id =>14, :company_id => 2}
])


Lead.create([
            {:title => "mahindra", :description => "automobile company", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Prakash wines", :description => "wine shoppee", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Gurvindar garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Pravin garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Suresh restaurant", :description => "restaurant", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Rahul bar", :description => "bar", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Harish ca", :description => "ca", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Pravesh ca", :description => "ca", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "TeamLeader"},
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
               {:contactable_id => 1, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 2, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "Existing Customer", :company_id => 1},
               {:contactable_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 4, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 5, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "Existing Customer", :company_id => 1},
               {:contactable_id => 6, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 1, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 2, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "Existing Customer", :company_id => 1},
               {:contactable_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 4, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 5, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "Existing Customer", :company_id => 1},
               {:contactable_id => 6, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 7, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 8, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 9, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 10, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 1},
               {:contactable_id => 11, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 12, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 13, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 14, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 15, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 16, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 17, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 18, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2},
               {:contactable_id => 19, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "Lead", :company_id => 2}
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
             {:title => "Meeting with ramesh pawar", :starts_at => "2013-04-04 01:17:00 UTC", :ends_at => "2013-04-04 02:17:00 UTC", :all_day => "true", :description => "application demo", :user_id => 1},
             {:title => "Demo of ERP to Prakash industries", :starts_at => "2013-04-05 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Demo of website to iconic photo studios", :starts_at => "2013-04-06 07:17:00 UTC", :ends_at => "2013-04-06 08:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "ERP to Salim Khan", :starts_at => "2013-04-08 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-08 06:17:00 UTC", :ends_at => "2013-04-08 06:17:00 UTC", :all_day => "true", :description => "This meeting for web application demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-09 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-09 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-12 20:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-14 12:13:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-15 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-15 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-16 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-17 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-17 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-18 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-19 14:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-23 15:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-23 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-25 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1},

             {:title => "Meeting", :starts_at => "2013-04-02 02:17:00 UTC", :ends_at => "2013-04-02 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 2},
             {:title => "Appoitement", :starts_at => "2013-04-02 01:17:00 UTC", :ends_at => "2013-04-02 01:30:00 UTC", :all_day => "true", :description => "This meeting for website  documentation", :user_id => 2},
             {:title => "Appoitement", :starts_at => "2013-04-04 01:17:00 UTC", :ends_at => "2013-04-04 01:30:00 UTC", :all_day => "false", :description => "This meeting for website  documentation", :user_id => 2},
             {:title => "Appoitement", :starts_at => "2013-04-06 01:17:00 UTC", :ends_at => "2013-04-06 01:30:00 UTC", :all_day => "false", :description => "This meeting for website  documentation", :user_id => 2},

             {:title => "Appoitement", :starts_at => "2013-04-01 02:17:00 UTC", :ends_at => "2013-04-01 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 3},
             {:title => "Meeting", :starts_at => "2013-04-08 02:17:00 UTC", :ends_at => "2013-04-08 03:17:00 UTC", :all_day => "false", :description => "Customer satisfaction", :user_id => 3},
             {:title => "Appoitement", :starts_at => "2013-04-04 02:17:00 UTC", :ends_at => "2013-04-04 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 3},
             {:title => "Appoitement", :starts_at => "2013-04-06 02:17:00 UTC", :ends_at => "2013-04-06 03:17:00 UTC", :all_day => "false", :description => "This meeting for product documentation", :user_id => 3},
])

FollowUp.create([
                {:lead_id => 1, :description => "first meeting", :follow_up_time => "11:47AM 01-Apr"},
                {:lead_id => 2, :description => "second meeting", :follow_up_time => "10:00AM 02-Apr"},
                {:lead_id => 3, :description => "first meeting", :follow_up_time => "11:47AM 03-Apr"},
                {:lead_id => 4, :description => "first meeting", :follow_up_time => "03:40PM 04-Apr"},
                {:lead_id => 5, :description => "last meeting", :follow_up_time => "11:00AM 05-Apr"},
                {:lead_id => 6, :description => "last meeting", :follow_up_time => "11:47AM 06-Apr"},
                {:lead_id => 7, :description => "first meeting", :follow_up_time => "10:00AM 07-Apr"},
                {:lead_id => 8, :description => "last meeting", :follow_up_time => "11:10AM 08-Apr"},
                {:lead_id => 9, :description => "first meeting", :follow_up_time => "11:47AM 09-Apr"},
                {:lead_id => 10, :description => "first meeting", :follow_up_time => "11:00AM 10-Apr"},
                {:lead_id => 11, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 12, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 13, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 14, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 15, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 16, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 17, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 18, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"},
                {:lead_id => 19, :description => "first meeting", :follow_up_time => "11:47AM 08-Apr"}
])


Product.create([
                   {:name => "CRM", :min_cost => 50000, :max_cost => 80000, :description => "Web application"},
                   {:name => "ERP", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "CRM + ERP", :min_cost => 80000, :max_cost => 100000, :description => "Web application"},
                   {:name => "Web Site Static", :min_cost => 30000, :max_cost => 40000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application"},
                   {:name => "Web Site Flash", :min_cost => 70000, :max_cost => 80000, :description => "Web application"}
               ])

LeadsProduct.create([
    {:lead_id => 1, :product_id => 1},
    {:lead_id => 2, :product_id => 2},
    {:lead_id => 3, :product_id => 2},
    {:lead_id => 4, :product_id => 3},
    {:lead_id => 5, :product_id => 4},
    {:lead_id => 6, :product_id => 5},
    {:lead_id => 7, :product_id => 6},
    {:lead_id => 8, :product_id => 6},
    {:lead_id => 9, :product_id => 4},
    {:lead_id => 10, :product_id => 3},
    {:lead_id => 11, :product_id => 1},
    {:lead_id => 12, :product_id => 4},
    {:lead_id => 13, :product_id => 5}
])

Tag.create([
    {:name => "Cloud", :company_id => 1},
    {:name => "website", :company_id => 1},
    {:name => "offline", :company_id => 1},
    {:name => "app", :company_id => 2},
    {:name => "android", :company_id => 2},
    {:name => "apple", :company_id => 2},
])

Notification.create([
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 2, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 3, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 3, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 4, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 5, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 6, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 2, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 8, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 9, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => true, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => true, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
                    {:sms_sent => true, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC"},
])

SpecialOccasion.create([
                       {:title => "divali", :body => "Divali is hindu occassion", :occasion_date => "2013-04-01 01:17:00 UTC"},
                       {:title => "gudi padva", :body => "Divali is hindu occassion", :occasion_date => "2013-04-03 01:17:00 UTC"},
                       {:title => "shiv jayanti", :body => "Divali is hindu occassion", :occasion_date => "2013-04-05 01:17:00 UTC"},
                       {:title => "dasra", :body => "Divali is hindu occassion", :occasion_date => "2013-04-06 01:17:00 UTC"},
                       {:title => "ram navami", :body => "Divali is hindu occassion", :occasion_date => "2013-04-08 01:17:00 UTC"},
                       {:title => "swami jayanti", :body => "Divali is hindu occassion", :occasion_date => "2013-04-05 01:17:00 UTC"},
                       {:title => "frnd ship day", :body => "Divali is hindu occassion", :occasion_date => "2013-04-10 01:17:00 UTC"},
                       {:title => "valen tine day", :body => "Divali is hindu occassion", :occasion_date => "2013-04-11 01:17:00 UTC"},
                       {:title => "rose day", :body => "Divali is hindu occassion", :occasion_date => "2013-04-15 01:17:00 UTC"},
                       {:title => "Thai Amavasai", :body => "Divali is hindu occassion", :occasion_date => "2013-04-17 01:17:00 UTC"},
                       {:title => "Maha Shivaratri", :body => "Divali is hindu occassion", :occasion_date => "2013-04-18 01:17:00 UTC"},
                       {:title => "Sri Ramanavami", :body => "Divali is hindu occassion", :occasion_date => "2013-04-19 01:17:00 UTC"},
                       {:title => "Mahavir Jayanti", :body => "Divali is hindu occassion", :occasion_date => "2013-04-20 01:17:00 UTC"},
                       {:title => "Madurai Meenakshi Thiru Kalyanam", :body => "Divali is hindu occassion", :occasion_date => "2013-04-25 01:17:00 UTC"},
                       {:title => "Sri Sankara Jayanthi", :body => "Divali is hindu occassion", :occasion_date => "2013-04-26 01:17:00 UTC"},
                       {:title => "Naga Chadurthi", :body => "Divali is hindu occassion", :occasion_date => "2013-04-27 01:17:00 UTC"},
                       {:title => "Gayatri Japam", :body => "Divali is hindu occassion", :occasion_date => "2013-04-28 01:17:00 UTC"},
                       {:title => "Sri Jayanthi", :body => "Divali is hindu occassion", :occasion_date => "2013-04-29 01:17:00 UTC"},
                       {:title => "Munithirya Jayanthi", :body => "Divali is hindu occassion", :occasion_date => "2013-04-30 01:17:00 UTC"}

])

Company.create([
               {:company_name => "wave tech line", :company_address => "cbs nasik", :contact_number1 => 154154158, :contact_number2 => 541555555, :admin_id => 1},
               {:company_name => "wave technology", :company_address => "satpure nasik", :contact_number1 => 541545415, :contact_number2 => 548457155, :admin_id => 2}
])