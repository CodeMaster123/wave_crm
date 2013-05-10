User.create([
            {:first_name => "Vivek", :last_name => "Varade", :address => "Near Vinchurkar diagnostics, CBS, Nashik", :mobile_no => 9876674554, :email => "superadmin@gmail.com", :password => "superadmin123", :password_confirmation => "superadmin123", :account_type => 4, :company_id => 1},
])


#################################################################
################# Indian Software company #######################
#################################################################

Company.create([
                   {:company_name => "wave tech line", :company_address => "cbs nasik", :contact_number1 => 154154158, :contact_number2 => 541555555}
])

User.create([
            {:first_name => "Vijay", :last_name => "gaikwad", :address => "Near Vinchurkar diagnostics, CBS, Nashik", :mobile_no => 9876674554, :email => "admin@gmail.com", :password => "admin123", :password_confirmation => "admin123", :account_type => 1, :company_id => 1},
            {:first_name => "Ramesh", :last_name => "Pawar", :address => "Pawan nagar, nashik", :mobile_no => 9973546324, :email => "team_leader@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => 2, :company_id => 1},
            {:first_name => "Rameshwar", :last_name => "Pawar", :address => "Pawan nagar, nashik", :mobile_no => 9973546324, :email => "team_leader1@gmail.com", :password => "team_leader1231", :password_confirmation => "team_leader1231", :account_type => 2, :company_id => 1},
            {:first_name => "Suresh", :last_name => "Kambale", :address => "Uttam nagar, Nashik", :mobile_no => 9912324212, :email => "sales_executive1@gmail.com", :password => "sales_executive1", :password_confirmation => "sales_executive1", :account_type => 3, :company_id => 1},
            {:first_name => "Ram", :last_name => "Patil", :address => "Panchavati, Nashik", :mobile_no => 9988776677, :email => "sales_executive2@gmail.com", :password => "sales_executive2", :password_confirmation => "sales_executive2", :account_type => 3, :company_id => 1},
            {:first_name => "Rahul", :last_name => "Borade", :address => "Upnagar, Nashik road", :mobile_no => 9878866856, :email => "sales_executive3@gmail.com", :password => "sales_executive3", :password_confirmation => "sales_executive3", :account_type => 3, :company_id => 1},
            {:first_name => "Praful", :last_name => "Bhamare", :address => "Near City center mall, Nashik", :mobile_no => 9912413213, :email => "sales_executive4@gmail.com", :password => "sales_executive4", :password_confirmation => "sales_executive4", :account_type => 3, :company_id => 1}
])

TeamLeader.create([
                  {:user_id => 3, :company_id => 1},
                  {:user_id => 4, :company_id => 1}
])

SalesExecutive.create([
                      {:team_leader_id =>1, :user_id =>5, :company_id => 1},
                      {:team_leader_id =>1, :user_id =>6, :company_id => 1},
                      {:team_leader_id =>2, :user_id =>7, :company_id => 1},
                      {:team_leader_id =>2, :user_id =>8, :company_id => 1}
])

Event.create([
             {:title => "Meeting with ramesh pawar", :starts_at => "2013-04-04 01:17:00 UTC", :ends_at => "2013-04-04 02:17:00 UTC", :all_day => "true", :description => "application demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of ERP to Prakash industries", :starts_at => "2013-04-05 12:17:00 UTC", :ends_at => "2013-04-05 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of website to iconic photo studios", :starts_at => "2013-04-06 07:17:00 UTC", :ends_at => "2013-04-06 08:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "ERP to Salim Khan", :starts_at => "2013-04-08 12:17:00 UTC", :ends_at => "2013-04-08 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-08 06:17:00 UTC", :ends_at => "2013-04-08 06:17:00 UTC", :all_day => "true", :description => "This meeting for web application demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-09 12:17:00 UTC", :ends_at => "2013-04-09 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-10 12:17:00 UTC", :ends_at => "2013-04-10 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-12 20:17:00 UTC", :ends_at => "2013-04-12 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-14 12:13:00 UTC", :ends_at => "2013-04-14 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-15 12:17:00 UTC", :ends_at => "2013-04-15 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting with ramesh pawar", :starts_at => "2013-04-16 01:17:00 UTC", :ends_at => "2013-04-16 02:17:00 UTC", :all_day => "true", :description => "application demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of ERP to Prakash industries", :starts_at => "2013-04-17 12:17:00 UTC", :ends_at => "2013-04-17 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of website to iconic photo studios", :starts_at => "2013-04-18 07:17:00 UTC", :ends_at => "2013-04-18 08:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "ERP to Salim Khan", :starts_at => "2013-04-19 12:17:00 UTC", :ends_at => "2013-04-19 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-20 06:17:00 UTC", :ends_at => "2013-04-20 06:17:00 UTC", :all_day => "true", :description => "This meeting for web application demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-21 12:17:00 UTC", :ends_at => "2013-04-21 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-22 12:17:00 UTC", :ends_at => "2013-04-22 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-23 20:17:00 UTC", :ends_at => "2013-04-23 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-24 12:13:00 UTC", :ends_at => "2013-04-24 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-25 12:17:00 UTC", :ends_at => "2013-04-25 01:17:00 UTC", :all_day => "false", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1}
])

Lead.create([
            {:title => "mahindra", :description => "automobile company", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Prakash wines", :description => "wine shoppee", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Gurvindar garage", :description => "Garage", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Pravin garage", :description => "Garage", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Suresh restaurant", :description => "restaurant", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Rahul bar", :description => "bar", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Harish ca", :description => "ca", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Pravesh ca", :description => "ca", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 4, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "mahindra", :description => "automobile company", :leadable_id => 4, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Prakash wines", :description => "wine shoppee", :leadable_id => 4, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Gurvindar garage", :description => "Garage", :leadable_id => 4, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Pravin garage", :description => "Garage", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Suresh restaurant", :description => "restaurant", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Rahul bar", :description => "bar", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Harish ca", :description => "ca", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Pravesh ca", :description => "ca", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 1},
            {:title => "Ramesh garage", :description => "Garage", :leadable_id => 7, :leadable_type => "SalesExecutive", :company_id => 1}
])

Contact.create([
               {:contactable_id => 1, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 1},
               {:contactable_id => 2, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8140, :latitude => 19.849, :company_id => 1},
               {:contactable_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8139, :latitude => 19.853, :company_id => 1},
               {:contactable_id => 4, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8131, :latitude => 19.850, :company_id => 1},
               {:contactable_id => 5, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.855, :company_id => 1},
               {:contactable_id => 6, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8182, :latitude => 19.839, :company_id => 1},
               {:contactable_id => 7, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8185, :latitude => 19.850, :company_id => 1},
               {:contactable_id => 8, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8175, :latitude => 19.854, :company_id => 1},
               {:contactable_id => 9, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8155, :latitude => 19.856, :company_id => 1},
               {:contactable_id => 10, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8197, :latitude => 19.852, :company_id => 1},
               {:contactable_id => 11, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8190, :latitude => 19.848, :company_id => 1},
               {:contactable_id => 12, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8163, :latitude => 19.856, :company_id => 1},
               {:contactable_id => 13, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8155, :latitude => 19.859, :company_id => 1},
               {:contactable_id => 14, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8165, :latitude => 19.857, :company_id => 1},
               {:contactable_id => 15, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "lead ", :longitude => 73.8186, :latitude => 19.840, :company_id => 1},
               {:contactable_id => 16, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8189, :latitude => 19.855, :company_id => 1},
               {:contactable_id => 17, :first_name => "rahul", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8181, :latitude => 19.860, :company_id => 1},
               {:contactable_id => 18, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8149, :latitude => 19.847, :company_id => 1},
               {:contactable_id => 19, :first_name => "sagar", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8148, :latitude => 19.848, :company_id => 1},
               {:contactable_id => 20, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8145, :latitude => 19.842, :company_id => 1},
               {:contactable_id => 1, :first_name => "sagar", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8139, :latitude => 19.841, :company_id => 1},
               {:contactable_id => 2, :first_name => "madhav", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8130, :latitude => 19.859, :company_id => 1},
               {:contactable_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8129, :latitude => 19.843, :company_id => 1},
               {:contactable_id => 4, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8120, :latitude => 19.841, :company_id => 1},
               {:contactable_id => 5, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "transaction", :longitude => 73.81101, :latitude => 19.8421, :company_id => 1},
               {:contactable_id => 6, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8100, :latitude => 19.848, :company_id => 1},
               {:contactable_id => 7, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8115, :latitude => 19.853, :company_id => 1},
               {:contactable_id => 8, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8128, :latitude => 19.859, :company_id => 1},
               {:contactable_id => 9, :first_name => "ganesh", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8129, :latitude => 19.850, :company_id => 1},
               {:contactable_id => 10, :first_name => "avinash", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8124, :latitude => 19.855, :company_id => 1},
               {:contactable_id => 11, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8134, :latitude => 19.856, :company_id => 1},
               {:contactable_id => 12, :first_name => "avin", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8130, :latitude => 19.854, :company_id => 1},
               {:contactable_id => 13, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8125, :latitude => 19.8554, :company_id => 1},
               {:contactable_id => 14, :first_name => "ganpat", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8123, :latitude => 19.850, :company_id => 1},
               {:contactable_id => 15, :first_name => "rohit", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "transaction ", :longitude => 73.8130, :latitude => 19.8425, :company_id => 1},
               {:contactable_id => 16, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8120, :latitude => 19.841, :company_id => 1},
               {:contactable_id => 17, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8200, :latitude => 19.840, :company_id => 1},
               {:contactable_id => 18, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8130, :latitude => 19.846, :company_id => 1},
               {:contactable_id => 19, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8140, :latitude => 19.849, :company_id => 1},
               {:contactable_id => 20, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8142, :latitude => 19.8540, :company_id => 1}
])

Target.create([
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :start_target_date => "2013-04-01 01:17:00 UTC", :end_target_date => "2013-04-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :start_target_date => "2013-05-01 01:17:00 UTC", :end_target_date => "2013-05-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :start_target_date => "2013-06-01 01:17:00 UTC", :end_target_date => "2013-06-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :start_target_date => "2013-07-01 01:17:00 UTC", :end_target_date => "2013-07-30 01:17:00 UTC",  :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 60000, :achived => 40000, :start_target_date => "2013-08-01 01:17:00 UTC", :end_target_date => "2013-08-30 01:17:00 UTC",  :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 60000, :achived => 50000, :start_target_date => "2013-09-01 01:17:00 UTC", :end_target_date => "2013-09-30 01:17:00 UTC",  :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :start_target_date => "2013-10-01 01:17:00 UTC", :end_target_date => "2013-10-30 01:17:00 UTC",  :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :start_target_date => "2013-11-01 01:17:00 UTC", :end_target_date => "2013-11-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :start_target_date => "2013-12-01 01:17:00 UTC", :end_target_date => "2013-12-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :start_target_date => "2013-02-04 01:17:00 UTC", :end_target_date => "2013-02-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :start_target_date => "2013-03-04 01:17:00 UTC", :end_target_date => "2013-03-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :start_target_date => "2013-04-04 01:17:00 UTC", :end_target_date => "2013-04-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :start_target_date => "2013-05-04 01:17:00 UTC", :end_target_date => "2013-05-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :start_target_date => "2013-06-04 01:17:00 UTC", :end_target_date => "2013-06-30 01:17:00 UTC",:company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :start_target_date => "2013-07-04 01:17:00 UTC", :end_target_date => "2013-07-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 1, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 40000, :start_target_date => "2013-08-04 01:17:00 UTC", :end_target_date => "2013-08-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 1, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 50000, :start_target_date => "2013-09-04 01:17:00 UTC", :end_target_date => "2013-09-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :start_target_date => "2013-10-04 01:17:00 UTC", :end_target_date => "2013-10-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :start_target_date => "2013-11-04 01:17:00 UTC", :end_target_date => "2013-11-30 01:17:00 UTC",:company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :start_target_date => "2013-12-04 01:17:00 UTC", :end_target_date => "2013-12-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 1}
])



FollowUp.create([
                {:lead_id => 1, :description => "first meeting", :follow_up_time => "11:47AM 01-Apr", :company_id => 1},
                {:lead_id => 2, :description => "second meeting", :follow_up_time => "10:00AM 02-Apr", :company_id => 1},
                {:lead_id => 3, :description => "first meeting", :follow_up_time => "11:47AM 03-Apr", :company_id => 1},
                {:lead_id => 4, :description => "first meeting", :follow_up_time => "03:40PM 04-Apr", :company_id => 1},
                {:lead_id => 5, :description => "last meeting", :follow_up_time => "11:00AM 05-Apr", :company_id => 1},
                {:lead_id => 6, :description => "last meeting", :follow_up_time => "11:47AM 06-Apr", :company_id => 1},
                {:lead_id => 7, :description => "first meeting", :follow_up_time => "10:00AM 07-Apr", :company_id => 1},
                {:lead_id => 8, :description => "last meeting", :follow_up_time => "11:10AM 08-Apr", :company_id => 1},
                {:lead_id => 9, :description => "first meeting", :follow_up_time => "11:47AM 09-Apr", :company_id => 1},
                {:lead_id => 10, :description => "first meeting", :follow_up_time => "11:00AM 10-Apr", :company_id => 1},
                {:lead_id => 11, :description => "first meeting", :follow_up_time => "11:47AM 01-Apr", :company_id => 1},
                {:lead_id => 12, :description => "second meeting", :follow_up_time => "10:00AM 02-Apr", :company_id => 1},
                {:lead_id => 13, :description => "first meeting", :follow_up_time => "11:47AM 03-Apr", :company_id => 1},
                {:lead_id => 14, :description => "first meeting", :follow_up_time => "03:40PM 04-Apr", :company_id => 1},
                {:lead_id => 15, :description => "last meeting", :follow_up_time => "11:00AM 05-Apr", :company_id => 1},
                {:lead_id => 16, :description => "last meeting", :follow_up_time => "11:47AM 06-Apr", :company_id => 1},
                {:lead_id => 17, :description => "first meeting", :follow_up_time => "10:00AM 07-Apr", :company_id => 1},
                {:lead_id => 18, :description => "last meeting", :follow_up_time => "11:10AM 08-Apr", :company_id => 1},
                {:lead_id => 19, :description => "first meeting", :follow_up_time => "11:47AM 09-Apr", :company_id => 1},
                {:lead_id => 20, :description => "first meeting", :follow_up_time => "11:00AM 10-Apr", :company_id => 1}
])

Product.create([
               {:name => "CRM", :min_cost => 50000, :max_cost => 80000, :description => "Web application", :company_id => 1},
               {:name => "ERP", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "CRM + ERP", :min_cost => 80000, :max_cost => 100000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Static", :min_cost => 30000, :max_cost => 40000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "CRM", :min_cost => 50000, :max_cost => 80000, :description => "Web application", :company_id => 1},
               {:name => "ERP", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "CRM + ERP", :min_cost => 80000, :max_cost => 100000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Static", :min_cost => 30000, :max_cost => 40000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1},
               {:name => "Web Site Dynamic", :min_cost => 40000, :max_cost => 60000, :description => "Web application", :company_id => 1}
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
                    {:lead_id => 9, :product_id => 7},
                    {:lead_id => 10, :product_id => 17},
                    {:lead_id => 10, :product_id => 18},
                    {:lead_id => 12, :product_id => 19},
                    {:lead_id => 11, :product_id => 20},
                    {:lead_id => 11, :product_id => 11},
                    {:lead_id => 12, :product_id => 12},
                    {:lead_id => 13, :product_id => 12},
                    {:lead_id => 14, :product_id => 13},
                    {:lead_id => 15, :product_id => 14},
                    {:lead_id => 16, :product_id => 15},
                    {:lead_id => 17, :product_id => 16},
                    {:lead_id => 18, :product_id => 16}
])

Tag.create([
           {:name => "Cloud", :company_id => 1},
           {:name => "website", :company_id => 1},
           {:name => "offline", :company_id => 1}
])

Notification.create([
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-06 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 2, :body => "msg body", :notification_time => "2013-04-07 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 3, :body => "msg body", :notification_time => "2013-04-08 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 10, :body => "msg body", :notification_time => "2013-04-09 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 8, :body => "msg body", :notification_time => "2013-04-10 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 7, :body => "msg body", :notification_time => "2013-04-11 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 5, :body => "msg body", :notification_time => "2013-04-12 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 9, :body => "msg body", :notification_time => "2013-04-13 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 14, :body => "msg body", :notification_time => "2013-04-14 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 11, :body => "msg body", :notification_time => "2013-04-15 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 1, :body => "msg body", :notification_time => "2013-04-16 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 2, :body => "msg body", :notification_time => "2013-04-17 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 13, :body => "msg body", :notification_time => "2013-04-18 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 10, :body => "msg body", :notification_time => "2013-04-19 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 18, :body => "msg body", :notification_time => "2013-04-20 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 17, :body => "msg body", :notification_time => "2013-04-21 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 15, :body => "msg body", :notification_time => "2013-04-22 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 19, :body => "msg body", :notification_time => "2013-04-23 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 14, :body => "msg body", :notification_time => "2013-04-24 01:17:00 UTC", :company_id => 1}
])

Transaction.create([
                   {:amount => 20000,  :transaction_time => "2013-04-05 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-06 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-07 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-08 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-09 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-10 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-11 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-12 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-13 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-14 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-15 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-16 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-17 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-18 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-19 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-20 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-21 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-22 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-23 01:17:00 UTC", :company_id => 1},
                   {:amount => 20000,  :transaction_time => "2013-04-25 01:17:00 UTC", :company_id => 1}
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

#################################################################
################# American Dental Clinic #######################
#################################################################

Company.create([
               {:company_name => "Dental Hospital", :company_address => "USA", :contact_number1 => 15465665556, :contact_number2 => 416515654165}
])

User.create([
            {:first_name => "George", :last_name => "Stinson", :address => "New york, USA", :mobile_no => 9871456416, :email => "admin1@gmail.com", :password => "admin123123", :password_confirmation => "admin123123", :account_type => 1, :company_id => 2},
            {:first_name => "Patrick", :last_name => "Ericssen", :address => "Los Angeles", :mobile_no => 9973546324, :email => "team_leader123@gmail.com", :password => "team_leader123123", :password_confirmation => "team_leader123123", :account_type => 2, :company_id => 2},
            {:first_name => "Margaret", :last_name => "Smith", :address => "Michigan, nashik", :mobile_no => 9973546324, :email => "team_leader1231@gmail.com", :password => "team_leader1231", :password_confirmation => "team_leader1231", :account_type => 2, :company_id => 2},
            {:first_name => "Harris", :last_name => "Radclief", :address => "Florida, Nashik", :mobile_no => 9912324212, :email => "sales_executive123@gmail.com", :password => "sales_executive123", :password_confirmation => "sales_executive123", :account_type => 3, :company_id => 2},
            {:first_name => "Neil", :last_name => "Pitt", :address => "Silicon valley", :mobile_no => 9988776677, :email => "sales_executive1231@gmail.com", :password => "sales_executive1231", :password_confirmation => "sales_executive1231", :account_type => 3, :company_id => 2},
            {:first_name => "Harry", :last_name => "Goldberg", :address => "Alaska", :mobile_no => 9878866856, :email => "sales_executive1232@gmail.com", :password => "sales_executive1232", :password_confirmation => "sales_executive1232", :account_type => 3, :company_id => 2},
            {:first_name => "Ronald", :last_name => "Edison", :address => "New Mexico", :mobile_no => 9912413213, :email => "sales_executive1233@gmail.com", :password => "sales_executive1233", :password_confirmation => "sales_executive1233", :account_type => 3, :company_id => 2}
])

TeamLeader.create([
                  {:user_id => 11, :company_id => 2},
                  {:user_id => 10, :company_id => 2}
])

SalesExecutive.create([
                      {:team_leader_id =>3, :user_id =>15, :company_id => 2},
                      {:team_leader_id =>3, :user_id =>12, :company_id => 2},
                      {:team_leader_id =>4, :user_id =>13, :company_id => 2},
                      {:team_leader_id =>4, :user_id =>14, :company_id => 2}
])

Lead.create([
            {:title => "James Jack", :description => "Root canal patient", :leadable_id => 8, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "Bleaching patient", :leadable_id => 8, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 8, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 8, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 9, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 9, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 9, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 9, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 9, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 10, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "hospital", :leadable_id => 10, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 10, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 11, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 11, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 11, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 12, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 12, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 11, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 13, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 14, :leadable_type => "SalesExecutive", :company_id => 2}
])

Contact.create([
               {:contactable_id => 21, :first_name => "James", :middle_name => "Jack", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 22, :first_name => "Adrian", :middle_name => "Bryan", :last_name => "Payton", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 23, :first_name => "Adam", :middle_name => "Patrick", :last_name => "Quincy", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 24, :first_name => "Bryan", :middle_name => "James", :last_name => "Wallace", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 25, :first_name => "William", :middle_name => "Barry", :last_name => "Burton", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 26, :first_name => "Edward", :middle_name => "Roger", :last_name => "Hanson", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 27, :first_name => "Johny", :middle_name => "Jacob", :last_name => "Robertson", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 28, :first_name => "Eddy", :middle_name => "Joshua", :last_name => "Harryson", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 29, :first_name => "Tyler", :middle_name => "James", :last_name => "Smith", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 30, :first_name => "David", :middle_name => "William", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 31, :first_name => "Jayden", :middle_name => "Christopher", :last_name => "Johnson", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 32, :first_name => "Michael", :middle_name => "Daniel", :last_name => "Wilson", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 33, :first_name => "Elijah", :middle_name => "Matthew", :last_name => "Harris", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 34, :first_name => "Noah", :middle_name => "Ethan", :last_name => "Thomas", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 35, :first_name => "Ashley", :middle_name => "William", :last_name => "White", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 36, :first_name => "Emily", :middle_name => "Emma", :last_name => "Garcia", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 37, :first_name => "Isabella", :middle_name => "Hannah", :last_name => "Lee", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 38, :first_name => "Madison", :middle_name => "Elizabeth", :last_name => "Lewis", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 39, :first_name => "Olivia", :middle_name => "Samantha", :last_name => "Hall", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 40, :first_name => "Abigail", :middle_name => "James", :last_name => "Wright", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 21, :first_name => "johny", :middle_name => "Jack", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 22, :first_name => "osh", :middle_name => "Bryan", :last_name => "Payton", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 23, :first_name => "mashush", :middle_name => "Patrick", :last_name => "Quincy", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 24, :first_name => "Bryan", :middle_name => "James", :last_name => "Wallace", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 25, :first_name => "William", :middle_name => "Barry", :last_name => "Burton", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 26, :first_name => "Edward", :middle_name => "Roger", :last_name => "Hanson", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 27, :first_name => "Johny", :middle_name => "Jacob", :last_name => "Robertson", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 28, :first_name => "Eddy", :middle_name => "Joshua", :last_name => "Harryson", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 29, :first_name => "Tyler", :middle_name => "James", :last_name => "Smith", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 30, :first_name => "David", :middle_name => "William", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 31, :first_name => "Jayden", :middle_name => "Christopher", :last_name => "Johnson", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 32, :first_name => "Michael", :middle_name => "Daniel", :last_name => "Wilson", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 33, :first_name => "Elijah", :middle_name => "Matthew", :last_name => "Harris", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 34, :first_name => "Noah", :middle_name => "Ethan", :last_name => "Thomas", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 35, :first_name => "Ashley", :middle_name => "William", :last_name => "White", :address => "pune", :mobile_no => 9875942156, :landline_no=> 4584125465, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 36, :first_name => "Emily", :middle_name => "Emma", :last_name => "Garcia", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 37, :first_name => "Isabella", :middle_name => "Hannah", :last_name => "Lee", :address => "lahavit", :mobile_no => 9850753535, :landline_no=> 45852142112, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 38, :first_name => "Madison", :middle_name => "Elizabeth", :last_name => "Lewis", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 4554587111, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 39, :first_name => "Olivia", :middle_name => "Samantha", :last_name => "Hall", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 48754549555, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:contactable_id => 40, :first_name => "Abigail", :middle_name => "James", :last_name => "Wright", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2}
])

Target.create([
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :start_target_date => "2013-04-04 01:17:00 UTC", :end_target_date => "2013-04-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :start_target_date => "2013-05-04 01:17:00 UTC", :end_target_date => "2013-05-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :start_target_date => "2013-06-04 01:17:00 UTC", :end_target_date => "2013-06-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :start_target_date => "2013-07-04 01:17:00 UTC", :end_target_date => "2013-07-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 60000, :achived => 40000, :start_target_date => "2013-08-04 01:17:00 UTC", :end_target_date => "2013-08-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 50000, :start_target_date => "2013-09-04 01:17:00 UTC", :end_target_date => "2013-09-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 6, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :start_target_date => "2013-10-04 01:17:00 UTC", :end_target_date => "2013-10-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :start_target_date => "2013-11-04 01:17:00 UTC", :end_target_date => "2013-11-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :start_target_date => "2013-12-04 01:17:00 UTC", :end_target_date => "2013-12-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :start_target_date => "2013-02-04 01:17:00 UTC", :end_target_date => "2013-02-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :start_target_date => "2013-03-04 01:17:00 UTC", :end_target_date => "2013-03-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :start_target_date => "2013-04-04 01:17:00 UTC", :end_target_date => "2013-04-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :start_target_date => "2013-05-04 01:17:00 UTC", :end_target_date => "2013-05-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :start_target_date => "2013-06-04 01:17:00 UTC", :end_target_date => "2013-06-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :start_target_date => "2013-07-04 01:17:00 UTC", :end_target_date => "2013-07-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 40000, :start_target_date => "2013-08-04 01:17:00 UTC", :end_target_date => "2013-08-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 6, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 50000, :start_target_date => "2013-09-04 01:17:00 UTC", :end_target_date => "2013-09-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :start_target_date => "2013-10-04 01:17:00 UTC", :end_target_date => "2013-10-30 01:17:00 UTC",:company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :start_target_date => "2013-11-04 01:17:00 UTC", :end_target_date => "2013-11-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :start_target_date => "2013-12-04 01:17:00 UTC", :end_target_date => "2013-12-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 6, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :start_target_date => "2013-01-04 01:17:00 UTC", :end_target_date => "2013-01-30 01:17:00 UTC", :company_id => 2}
])

FollowUp.create([
                {:lead_id => 21, :description => "first meeting", :follow_up_time => "11:47AM 01-Apr", :company_id => 2},
                {:lead_id => 22, :description => "second meeting", :follow_up_time => "10:00AM 02-Apr", :company_id => 2},
                {:lead_id => 23, :description => "first meeting", :follow_up_time => "11:47AM 03-Apr", :company_id => 2},
                {:lead_id => 24, :description => "first meeting", :follow_up_time => "03:40PM 04-Apr", :company_id => 2},
                {:lead_id => 25, :description => "last meeting", :follow_up_time => "11:00AM 05-Apr", :company_id => 2},
                {:lead_id => 26, :description => "last meeting", :follow_up_time => "11:47AM 06-Apr", :company_id => 2},
                {:lead_id => 27, :description => "first meeting", :follow_up_time => "10:00AM 07-Apr", :company_id => 2},
                {:lead_id => 28, :description => "last meeting", :follow_up_time => "11:10AM 08-Apr", :company_id => 2},
                {:lead_id => 29, :description => "first meeting", :follow_up_time => "11:47AM 09-Apr", :company_id => 2},
                {:lead_id => 30, :description => "first meeting", :follow_up_time => "11:00AM 10-Apr", :company_id => 2},
                {:lead_id => 31, :description => "first meeting", :follow_up_time => "11:47AM 01-Apr", :company_id => 2},
                {:lead_id => 32, :description => "second meeting", :follow_up_time => "10:00AM 02-Apr", :company_id => 2},
                {:lead_id => 33, :description => "first meeting", :follow_up_time => "11:47AM 03-Apr", :company_id => 2},
                {:lead_id => 34, :description => "first meeting", :follow_up_time => "03:40PM 04-Apr", :company_id => 2},
                {:lead_id => 35, :description => "last meeting", :follow_up_time => "11:00AM 05-Apr", :company_id => 2},
                {:lead_id => 36, :description => "last meeting", :follow_up_time => "11:47AM 06-Apr", :company_id => 2},
                {:lead_id => 37, :description => "first meeting", :follow_up_time => "10:00AM 07-Apr", :company_id => 2},
                {:lead_id => 38, :description => "last meeting", :follow_up_time => "11:10AM 08-Apr", :company_id => 2},
                {:lead_id => 39, :description => "first meeting", :follow_up_time => "11:47AM 09-Apr", :company_id => 2},
                {:lead_id => 40, :description => "first meeting", :follow_up_time => "11:00AM 10-Apr", :company_id => 2}
])



Product.create([
               {:name => "Teeth", :min_cost => 50000, :max_cost => 80000, :description => "teeth treatment", :company_id => 2},
               {:name => "Gold Teeth", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "silver + Teeth", :min_cost => 80000, :max_cost => 100000, :description => "teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 30000, :max_cost => 40000, :description => "teeth treatment", :company_id => 2},
               {:name => "teeth clean", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => " teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => " teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => " teeth treatment", :company_id => 2},
               {:name => "root canalc", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "Teeth", :min_cost => 50000, :max_cost => 80000, :description => "teeth treatment", :company_id => 2},
               {:name => "Gold Teeth", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "silver + Teeth", :min_cost => 80000, :max_cost => 100000, :description => "teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 30000, :max_cost => 40000, :description => "teeth treatment", :company_id => 2},
               {:name => "teeth clean", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => " teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => " teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => " teeth treatment", :company_id => 2},
               {:name => "root canalc", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2},
               {:name => "root canal", :min_cost => 40000, :max_cost => 60000, :description => "teeth treatment", :company_id => 2}
])

LeadsProduct.create([
                    {:lead_id => 21, :product_id => 21},
                    {:lead_id => 22, :product_id => 22},
                    {:lead_id => 23, :product_id => 22},
                    {:lead_id => 24, :product_id => 23},
                    {:lead_id => 25, :product_id => 24},
                    {:lead_id => 26, :product_id => 25},
                    {:lead_id => 27, :product_id => 26},
                    {:lead_id => 28, :product_id => 26},
                    {:lead_id => 29, :product_id => 27},
                    {:lead_id => 30, :product_id => 27},
                    {:lead_id => 30, :product_id => 28},
                    {:lead_id => 22, :product_id => 29},
                    {:lead_id => 21, :product_id => 30},
                    {:lead_id => 21, :product_id => 31},
                    {:lead_id => 22, :product_id => 32},
                    {:lead_id => 33, :product_id => 32},
                    {:lead_id => 34, :product_id => 33},
                    {:lead_id => 35, :product_id => 34},
                    {:lead_id => 36, :product_id => 35},
                    {:lead_id => 37, :product_id => 36},
                    {:lead_id => 38, :product_id => 36},
                    {:lead_id => 39, :product_id => 37},
                    {:lead_id => 30, :product_id => 37},
                    {:lead_id => 30, :product_id => 38},
                    {:lead_id => 32, :product_id => 39},
                    {:lead_id => 31, :product_id => 40}
])

Tag.create([
           {:name => "teeth operation", :company_id => 2},
           {:name => "only cleanup", :company_id => 2},
           {:name => "root canal", :company_id => 2},
           {:name => "teeth operation", :company_id => 2},
           {:name => "only cleanup", :company_id => 2},
           {:name => "root canal", :company_id => 2}
])

Notification.create([
                    {:sms_sent => false, :contact_id => 21, :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 21, :body => "msg body", :notification_time => "2013-04-06 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 22, :body => "msg body", :notification_time => "2013-04-07 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 23, :body => "msg body", :notification_time => "2013-04-08 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 20, :body => "msg body", :notification_time => "2013-04-09 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 28, :body => "msg body", :notification_time => "2013-04-10 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 27, :body => "msg body", :notification_time => "2013-04-11 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 25, :body => "msg body", :notification_time => "2013-04-12 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 29, :body => "msg body", :notification_time => "2013-04-13 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 24, :body => "msg body", :notification_time => "2013-04-12 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 21, :body => "msg body", :notification_time => "2013-04-15 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 21, :body => "msg body", :notification_time => "2013-04-16 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 32, :body => "msg body", :notification_time => "2013-04-17 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 33, :body => "msg body", :notification_time => "2013-04-18 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 30, :body => "msg body", :notification_time => "2013-04-19 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 38, :body => "msg body", :notification_time => "2013-04-20 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 37, :body => "msg body", :notification_time => "2013-04-21 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 35, :body => "msg body", :notification_time => "2013-04-22 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 39, :body => "msg body", :notification_time => "2013-04-23 01:17:00 UTC", :company_id => 2},
                    {:sms_sent => false, :contact_id => 34, :body => "msg body", :notification_time => "2013-04-24 01:17:00 UTC", :company_id => 2}
])

Transaction.create([
                   {:amount => 20000, :transaction_time => "2013-04-05 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-06 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-07 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-08 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-09 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-10 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-11 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-12 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-13 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-14 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-15 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-16 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-17 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-18 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-19 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-20 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-21 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-22 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-23 01:17:00 UTC", :company_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-24 01:17:00 UTC", :company_id => 2}
])



