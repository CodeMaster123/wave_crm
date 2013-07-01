User.create([
            {:first_name => "Vivek", :last_name => "Varade", :address => "Near Vinchurkar diagnostics, CBS, Nashik", :mobile_no => 9503467486, :email => "superadmin@gmail.com", :password => "superadmin123", :password_confirmation => "superadmin123", :account_type => 4, :company_id => 1},
])


#################################################################
################# Indian Software company #######################
#################################################################

Company.create([
                   {:company_name => "wave tech line", :company_address => "Arrisrocrapt appt, Behind SBI bank, CBS, Nasik", :contact_number1 => 2805656, :contact_number2 => 2493131, :crm_customer_id => 1}
])

CrmCustomer.create([
                   {:first_name => "Ramesh", :middle_name => "Suresh", :last_name => "Kidchudkar", :address => "Near city center mall, Nashik", :amount_paid => 50000, :subscription_start => (Date.today - 1.year + 4.months), :subscription_ends => (Date.today + 4.months), :customer_type => 'B2B'}
])
User.create([
            {:first_name => "Vijay", :last_name => "gaikwad", :address => "Near Vinchurkar diagnostics, CBS, Nashik", :mobile_no => 8055508545, :email => "admin@gmail.com", :password => "admin123", :password_confirmation => "admin123", :account_type => 1, :company_id => 1},
            {:first_name => "jeevan", :last_name => "Pawar", :address => "Pawan nagar, nashik", :mobile_no => 9049402749, :email => "team_leader@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => 2, :company_id => 1},
            {:first_name => "Yogesh", :last_name => "Khandage", :address => "Jatra hotel, nashik", :mobile_no => 8390902797, :email => "team_leader1@gmail.com", :password => "team_leader1123", :password_confirmation => "team_leader1123", :account_type => 2, :company_id => 1},
            {:first_name => "Kishor", :last_name => "Patil", :address => "Unt Wadi, Nashik", :mobile_no => 8888884083, :email => "sales_executive1@gmail.com", :password => "sales_executive1", :password_confirmation => "sales_executive1", :account_type => 3, :company_id => 1},
            {:first_name => "Ketan", :last_name => "Patil", :address => "Panchavati, Nashik", :mobile_no => 7385599676, :email => "sales_executive2@gmail.com", :password => "sales_executive2", :password_confirmation => "sales_executive2", :account_type => 3, :company_id => 1},
            {:first_name => "Rahul", :last_name => "Borade", :address => "Upnagar, Nashik road", :mobile_no => 9822882096, :email => "sales_executive3@gmail.com", :password => "sales_executive3", :password_confirmation => "sales_executive3", :account_type => 3, :company_id => 1},
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
             {:title => "Meeting with ramesh pawar", :starts_at => "2013-04-04 01:17:00 UTC", :description => "application demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of ERP to Prakash industries", :starts_at => "2013-04-05 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of website to iconic photo studios", :starts_at => "2013-04-06 07:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "ERP to Salim Khan", :starts_at => "2013-04-08 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-08 06:17:00 UTC", :description => "This meeting for web application demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-09 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-10 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-12 20:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-14 12:13:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-15 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting with ramesh pawar", :starts_at => "2013-04-16 01:17:00 UTC", :description => "application demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of ERP to Prakash industries", :starts_at => "2013-04-17 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Demo of website to iconic photo studios", :starts_at => "2013-04-18 07:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "ERP to Salim Khan", :starts_at => "2013-04-19 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-20 06:17:00 UTC", :description => "This meeting for web application demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-21 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-22 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-23 20:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-24 12:13:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1},
             {:title => "Meeting", :starts_at => "2013-04-25 12:17:00 UTC", :description => "This meeting for web site demo", :user_id => 1, :company_id => 1}
])

Lead.create([
            {:lead_status => "Lead", :lead_source => "cold_call", :title => "mahindra", :description => "automobile company", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "cold_call", :title => "Prakash wines", :description => "wine shoppee", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "cold_call", :title => "Gurvindar garage", :description => "Garage", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "advertisement", :title => "Pravin garage", :description => "Garage", :leadable_id => 2, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "advertisement", :title => "Ramesh garage", :description => "Garage", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Dead", :lead_source => "advertisement", :title => "Suresh restaurant", :description => "restaurant", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Dead", :lead_source => "direct_marketing", :title => "Rahul bar", :description => "bar", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Dead", :lead_source => "direct_marketing", :title => "Harish ca", :description => "ca", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Future", :lead_source => "direct_marketing", :title => "Pravesh ca", :description => "ca", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 1},
            {:lead_status => "Future", :lead_source => "partner", :title => "Ramesh garage", :description => "Garage", :leadable_id => 4, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Future", :lead_source => "partner", :title => "mahindra", :description => "automobile company", :leadable_id => 4, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Future", :lead_source => "partner", :title => "Prakash wines", :description => "wine shoppee", :leadable_id => 1, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Prospecting", :lead_source => "public_relations", :title => "Gurvindar garage", :description => "Garage", :leadable_id => 1, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Prospecting", :lead_source => "public_relations", :title => "Pravin garage", :description => "Garage", :leadable_id => 1, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "public_relations", :title => "Ramesh garage", :description => "Garage", :leadable_id => 1, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "seminar", :title => "Suresh restaurant", :description => "restaurant", :leadable_id => 1, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "seminar", :title => "Rahul bar", :description => "bar", :leadable_id => 1, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "trade_show", :title => "Harish ca", :description => "ca", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "trade_show", :title => "Pravesh ca", :description => "ca", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 1},
            {:lead_status => "Lead", :lead_source => "trade_show", :title => "Ramesh garage", :description => "Garage", :leadable_id => 7, :leadable_type => "SalesExecutive", :company_id => 1}
])

Contact.create([
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 1, :first_name => "sandip", :middle_name => "suresh", :last_name => "shinde", :address => "lahavit,Nasik", :mobile_no => 9850753535, :landline_no=> 2805299, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 1, :account_id => 1},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 2, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "Bhagur, Nasik", :mobile_no => 9850925355, :landline_no=> 2805130, :contactable_type => "lead ", :longitude => 74.8140, :latitude => 19.849, :company_id => 1, :account_id => 1},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "Vanjarvadi, Nasik", :mobile_no => 9527836182, :landline_no=> 2805132, :contactable_type => "lead", :longitude => 75.8139, :latitude => 19.853, :company_id => 1, :account_id => 1},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 4, :first_name => "madan", :middle_name => "suresh", :last_name => "shinde", :address => "Moha, Sinnar", :mobile_no => 9822972244, :landline_no=> 2854696, :contactable_type => "lead", :longitude => 73.8131, :latitude => 20.850, :company_id => 1, :account_id => 1},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 5, :first_name => "pappu", :middle_name => "bhagvan", :last_name => "kale", :address => "Deolali Camp, Nasik", :mobile_no => 9673301760, :landline_no=> 2805151, :contactable_type => "lead", :longitude => 76.8132, :latitude => 18.855, :company_id => 1, :account_id => 1},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 6, :first_name => "ravi", :middle_name => "bhackar", :last_name => "kale", :address => "Shenit, Sinnar", :mobile_no => 9822994267, :landline_no=> 2805353, :contactable_type => "lead", :longitude => 76.8182, :latitude => 17.839, :company_id => 1, :account_id => 1},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 7, :first_name => "Adesh", :middle_name => "Chandrakant", :last_name => "Gaikwad", :address => "Mundva, Pune", :mobile_no => 8625887079, :landline_no=> 2789456, :contactable_type => "lead", :longitude => 75.8185, :latitude => 16.850, :company_id => 1, :account_id => 2},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 8, :first_name => "Baban", :middle_name => "Ram", :last_name => "Muthal", :address => "Jai Bhavani Road, Nasik", :mobile_no => 9890404972, :landline_no=> 2468585, :contactable_type => "lead ", :longitude => 77.8175, :latitude => 15.854, :company_id => 1, :account_id => 2},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 9, :first_name => "Shashi", :middle_name => "vitthal", :last_name => "Godase", :address => "Sansari, Nasik", :mobile_no => 9767798733, :landline_no=> 2497878, :contactable_type => "lead", :longitude => 71.8155, :latitude => 15.856, :company_id => 1, :account_id => 2},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 10, :first_name => "Ajay", :middle_name => "suresh", :last_name => "Aher", :address => "Sakur, Egatpuri", :mobile_no => 8421127764, :landline_no=> 2805959, :contactable_type => "lead", :longitude => 73.8197, :latitude => 14.852, :company_id => 1, :account_id => 2},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 11, :first_name => "Ajay", :middle_name => "Ganesh", :last_name => "shinde", :address => "Chehadi, Nasik", :mobile_no => 96233003111, :landline_no=> 2802121, :contactable_type => "lead", :longitude => 75.8190, :latitude => 13.848, :company_id => 1, :account_id => 3},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 12, :first_name => "Rinku", :middle_name => "shivaji", :last_name => "Muthal", :address => "Vadner, Nasik", :mobile_no => 9689422189, :landline_no=> 4554587111, :contactable_type => "lead ", :longitude => 76.8163, :latitude => 12.856, :company_id => 1, :account_id => 3},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 13, :first_name => "Amol", :middle_name => "vitthal", :last_name => "Gaikwad", :address => "Nandur, EWgatpuri", :mobile_no => 9579298285, :landline_no=> 2809696, :contactable_type => "lead", :longitude => 79.8155, :latitude => 11.859, :company_id => 1, :account_id => 3},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 14, :first_name => "Amol", :middle_name => "suresh", :last_name => "Gulve", :address => "Belgaon, Egatpuri", :mobile_no => 8888078977, :landline_no=> 2854545, :contactable_type => "lead", :longitude => 78.8165, :latitude => 19.857, :company_id => 1, :account_id => 3},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 15, :first_name => "Anand", :middle_name => "bhagvan", :last_name => "Raut", :address => "Cidco, Nasik", :mobile_no => 99701212689, :landline_no=> 2568585, :contactable_type => "lead ", :longitude => 76.8186, :latitude => 18.840, :company_id => 1, :account_id => 4},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 16, :first_name => "Avinash", :middle_name => "Ram", :last_name => "Aware", :address => "Chehadi, Nasik", :mobile_no => 9812548265, :landline_no=> 2789545, :contactable_type => "lead", :longitude => 79.8189, :latitude => 17.855, :company_id => 1, :account_id => 4},
               {:contact_relationship => "client", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 17, :first_name => "rahul", :middle_name => "suresh", :last_name => "shinde", :address => "Nasik Road, Nasik", :mobile_no => 9960703656, :landline_no=> 2895623, :contactable_type => "lead", :longitude => 73.8181, :latitude => 16.860, :company_id => 1, :account_id => 4},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 18, :first_name => "Govind", :middle_name => "Nathu", :last_name => "gaikwad", :address => "Jail Road, Nasik", :mobile_no => 9154287956, :landline_no=> 2365647, :contactable_type => "lead ", :longitude => 73.8149, :latitude => 15.847, :company_id => 1, :account_id => 4},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 19, :first_name => "sagar", :middle_name => "Balu", :last_name => "Gaikwad", :address => "Jail Road, Nasik", :mobile_no => 7385599676, :landline_no=> 2894545, :contactable_type => "lead", :longitude => 72.8148, :latitude => 14.848, :company_id => 1, :account_id => 5},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 20, :first_name => "Tushar", :middle_name => "suresh", :last_name => "Kombde", :address => "Pathardi", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "lead", :longitude => 71.8145, :latitude => 13.842, :company_id => 1, :account_id => 5},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 1, :first_name => "Praksh", :middle_name => "Balu", :last_name => "Lahange", :address => "Bhagur, Nasik", :mobile_no => 9845451253, :landline_no=> 2493636, :contactable_type => "transaction", :longitude => 73.8139, :latitude => 12.841, :company_id => 1, :account_id => 5},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 2, :first_name => "Bharat", :middle_name => "Sayaji", :last_name => "Dongare", :address => "Pimpal goan, Sinnar", :mobile_no => 9154287989, :landline_no=> 2758585, :contactable_type => "transaction ", :longitude => 76.8130, :latitude => 11.859, :company_id => 1, :account_id => 5},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 3, :first_name => "sachin", :middle_name => "vitthal", :last_name => "kale", :address => "Shigave Nasik", :mobile_no => 9850505045, :landline_no=> 2545652, :contactable_type => "transaction", :longitude => 80.8129, :latitude => 19.843, :company_id => 1, :account_id => 6},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 4, :first_name => "madan", :middle_name => "Ramesh", :last_name => "Muthal", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 45854857952, :contactable_type => "transaction", :longitude => 79.8120, :latitude => 14.841, :company_id => 1, :account_id => 6},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 5, :first_name => "pappu", :middle_name => "jeevan", :last_name => "Salve", :address => "Akurdi, Pune", :mobile_no => 9875978458, :landline_no=> 2857545, :contactable_type => "transaction", :longitude => 69.81101, :latitude => 19.8421, :company_id => 1, :account_id => 6},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 6, :first_name => "Balu", :middle_name => "bhackar", :last_name => "kale", :address => "Ambad, Nasik", :mobile_no => 981212121, :landline_no=> 2456525, :contactable_type => "transaction", :longitude => 68.8100, :latitude => 15.848, :company_id => 1, :account_id => 6},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 7, :first_name => "sandip", :middle_name => "shivaji", :last_name => "Jain", :address => "Shevage Darana, Nasik", :mobile_no => 7385599676, :landline_no=> 2805214, :contactable_type => "transaction", :longitude => 71.8115, :latitude => 19.853, :company_id => 1, :account_id => 6},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 8, :first_name => "bharat", :middle_name => "shivaji", :last_name => "gaikwad", :address => "nasik", :mobile_no => 9154287956, :landline_no=> 2458597, :contactable_type => "transaction ", :longitude => 73.8128, :latitude => 19.859, :company_id => 1, :account_id => 7},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 9, :first_name => "ganesh", :middle_name => "vitthal", :last_name => "kale", :address => "panchavati, Nasik", :mobile_no => 9812548265, :landline_no=> 2365687, :contactable_type => "transaction", :longitude => 79.8129, :latitude => 19.850, :company_id => 1, :account_id => 7},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 10, :first_name => "avinash", :middle_name => "suresh", :last_name => "shinde", :address => "Ashok Stambh, Nasik", :mobile_no => 9855849653, :landline_no=> 2458575, :contactable_type => "transaction", :longitude => 73.8124, :latitude => 16.855, :company_id => 1, :account_id => 7},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 11, :first_name => "Mohan", :middle_name => "suresh", :last_name => "shinde", :address => "Uppa Nagar, Nasik", :mobile_no => 9850323562, :landline_no=> 2805163, :contactable_type => "transaction", :longitude => 73.8134, :latitude => 19.856, :company_id => 1, :account_id => 7},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 12, :first_name => "Jagdish", :middle_name => "shivaji", :last_name => "gaikwad", :address => "Ambad, Nasik", :mobile_no => 9845152452, :landline_no=> 2751245, :contactable_type => "transaction ", :longitude => 73.8130, :latitude => 19.854, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 13, :first_name => "Ganpat", :middle_name => "vitthal", :last_name => "kale", :address => "Satpure, Nasik", :mobile_no => 9881526935, :landline_no=> 2356565, :contactable_type => "transaction", :longitude => 73.8125, :latitude => 19.8554, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 14, :first_name => "Jayesh", :middle_name => "suresh", :last_name => "shinde", :address => "Rane Nagar, Nasik", :mobile_no => 9822883025, :landline_no=> 2802152, :contactable_type => "transaction", :longitude => 76.8123, :latitude => 19.850, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 15, :first_name => "rohit", :middle_name => "bhagvan", :last_name => "kale", :address => "pune", :mobile_no => 7385599648, :landline_no=> 2806160, :contactable_type => "transaction ", :longitude => 73.8130, :latitude => 11.8425, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 16, :first_name => "Rajesh", :middle_name => "bhackar", :last_name => "kale", :address => "bhagur, Nasik", :mobile_no => 9130565678, :landline_no=> 2634575, :contactable_type => "transaction", :longitude => 73.8120, :latitude => 15.841, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 17, :first_name => "Mahesh", :middle_name => "suresh", :last_name => "shinde", :address => "Deolali Camp, Nasik", :mobile_no => 9623107598, :landline_no=> 2596357, :contactable_type => "transaction", :longitude => 60.8200, :latitude => 14.840, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 18, :first_name => "mangesh", :middle_name => "Bandu", :last_name => "thorat", :address => "nasik", :mobile_no => 9604002175, :landline_no=> 2456351, :contactable_type => "transaction ", :longitude => 64.8130, :latitude => 16.846, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 19, :first_name => "Kalpesh", :middle_name => "om", :last_name => "Khrana", :address => "Shalimar, Nasik", :mobile_no => 9511122157, :landline_no=> 2653561, :contactable_type => "transaction", :longitude => 65.8140, :latitude => 17.849, :company_id => 1, :account_id => 1},
               {:contact_relationship => "potential_customer", :email_id => "varade.vivek.123@gmail.com", :contactable_id => 20, :first_name => "kailas", :middle_name => "anna", :last_name => "parad", :address => "Mhasrul, Nasik", :mobile_no => 9822335645, :landline_no=> 2965688, :contactable_type => "transaction", :longitude => 68.8142, :latitude => 17.8540, :company_id => 1, :account_id => 9}
])

Target.create([
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :target_month => 4, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :target_month => 4, :target_year => 2013, :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :target_month => 5, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :target_month => 5, :target_year => 2013, :company_id => 1},
              {:targetable_id => 1, :targetable_type => "TeamLeader", :amount => 60000, :achived => 40000, :target_month => 6, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "TeamLeader", :amount => 60000, :achived => 50000, :target_month => 6, :target_year => 2013, :company_id => 1},
              {:targetable_id => 1, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :target_month => 4, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :target_month => 4, :target_year => 2013, :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :target_month => 4, :target_year => 2013, :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :target_month => 4, :target_year => 2013, :company_id => 1},
              {:targetable_id => 1, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :target_month => 5, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :target_month => 5, :target_year => 2013, :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 100000, :achived => 70000, :target_month => 5, :target_year => 2013, :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 50000, :achived => 36500, :target_month => 5, :target_year => 2013, :company_id => 1},
              {:targetable_id => 1, :targetable_type => "SalesExecutive", :amount => 80000, :achived => 75000, :target_month => 6, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 100000, :achived => 80000, :target_month => 6, :target_year => 2013, :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 40000, :target_month => 6, :target_year => 2013, :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 50000, :target_month => 6, :target_year => 2013, :company_id => 1},
              {:targetable_id => 1, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :target_month => 7, :target_year => 2013, :company_id => 1},
              {:targetable_id => 2, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :target_month => 7, :target_year => 2013, :company_id => 1},
              {:targetable_id => 3, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :target_month => 7, :target_year => 2013, :company_id => 1},
              {:targetable_id => 4, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :target_month => 7, :target_year => 2013, :company_id => 1}

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
                    {:sms_sent => false, :contact_id => 1, :subject =>"", :body => "msg body", :notification_time => "2013-04-05 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 1, :subject =>"", :body => "msg body", :notification_time => "2013-04-06 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 2, :subject =>"", :body => "msg body", :notification_time => "2013-04-07 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 3, :subject =>"", :body => "msg body", :notification_time => "2013-04-08 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 10, :subject =>"", :body => "msg body", :notification_time => "2013-04-09 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 8, :subject =>"", :body => "msg body", :notification_time => "2013-04-10 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 7, :subject =>"", :body => "msg body", :notification_time => "2013-04-11 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 5, :subject =>"", :body => "msg body", :notification_time => "2013-04-12 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 9, :subject =>"", :body => "msg body", :notification_time => "2013-04-13 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 14,:subject =>"", :body => "msg body", :notification_time => "2013-04-14 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 11,:subject =>"", :body => "msg body", :notification_time => "2013-04-15 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 1,:subject =>"", :body => "msg body", :notification_time => "2013-04-16 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 2,:subject =>"", :body => "msg body", :notification_time => "2013-04-17 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 13,:subject =>"", :body => "msg body", :notification_time => "2013-04-18 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 10,:subject =>"", :body => "msg body", :notification_time => "2013-04-19 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 18,:subject =>"", :body => "msg body", :notification_time => "2013-04-20 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 17,:subject =>"", :body => "msg body", :notification_time => "2013-04-21 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 15,:subject =>"", :body => "msg body", :notification_time => "2013-04-22 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 19,:subject =>"", :body => "msg body", :notification_time => "2013-04-23 01:17:00 UTC", :company_id => 1},
                    {:sms_sent => false, :contact_id => 14,:subject =>"", :body => "msg body", :notification_time => "2013-04-24 01:17:00 UTC", :company_id => 1}
])

Transaction.create([
                   {:amount => 20000, :transaction_time => "2013-05-06 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 1, :matured_by => 3, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 546554, :transaction_time => "2013-05-07 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 2, :matured_by => 4, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 87687, :transaction_time => "2013-05-08 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 3, :matured_by => 3, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 354345, :transaction_time => "2013-05-09 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 4, :matured_by => 4, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 978978, :transaction_time => "2013-05-10 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 5, :matured_by => 5, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 5345, :transaction_time => "2013-05-11 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 6, :matured_by => 6, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 8786, :transaction_time => "2013-05-12 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 7, :matured_by => 7, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 45435, :transaction_time => "2013-05-13 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 8, :matured_by => 8, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 1},
                   {:amount => 57657, :transaction_time => "2013-05-14 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 9, :matured_by => 5, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 3},
                   {:amount => 354353, :transaction_time => "2013-05-15 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 10, :matured_by => 6, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 3},
                   {:amount => 436556, :transaction_time => "2013-05-16 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 21, :matured_by => 7, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 1},
                   {:amount => 4654645, :transaction_time => "2013-05-17 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 22, :matured_by => 8, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 2},
                   {:amount => 46453, :transaction_time => "2013-05-18 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 23, :matured_by => 5, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 3},
                   {:amount => 4365656, :transaction_time => "2013-05-19 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 24, :matured_by => 6, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 4},
                   {:amount => 33565, :transaction_time => "2013-05-20 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 25, :matured_by => 7, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 5},
                   {:amount => 45436, :transaction_time => "2013-05-21 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 26, :matured_by => 8, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 2},
                   {:amount => 34656, :transaction_time => "2013-05-22 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 27, :matured_by => 5, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 2},
                   {:amount => 34654, :transaction_time => "2013-05-23 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 28, :matured_by => 6, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 2},
                   {:amount => 346543, :transaction_time => "2013-05-24 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 29, :matured_by => 7, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 3},
                   {:amount => 76767, :transaction_time => "2013-05-25 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 30, :matured_by => 8, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 3},
                   {:amount => 576545, :transaction_time => "2013-05-01 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 1, :matured_by => 3, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 3},
                   {:amount => 567565, :transaction_time => "2013-05-02 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 2, :matured_by => 4, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 4},
                   {:amount => 4767465, :transaction_time => "2013-05-03 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 3, :matured_by => 3, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 4},
                   {:amount => 457657, :transaction_time => "2013-05-04 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 4, :matured_by => 4, :executive_type => 1, :transaction_type => "cash", :micr_code => "", :account_id => 4},
                   {:amount => 456546, :transaction_time => "2013-05-15 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 5, :matured_by => 5, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 4},
                   {:amount => 47654, :transaction_time => "2013-05-16 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 6, :matured_by => 6, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 4},
                   {:amount => 47657, :transaction_time => "2013-05-17 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 7, :matured_by => 7, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 5},
                   {:amount => 567657, :transaction_time => "2013-05-18 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 8, :matured_by => 8, :executive_type => 2, :transaction_type => "cash", :micr_code => "", :account_id => 5},
                   {:amount => 354545, :transaction_time => "2013-05-19 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 9, :matured_by => 5, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 5},
                   {:amount => 36546, :transaction_time => "2013-05-10 01:17:00 UTC", :company_id => 1, :contact_type => 1, :contact_id => 10, :matured_by => 6, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 5},
                   {:amount => 36565, :transaction_time => "2013-05-11 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 21, :matured_by => 7, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 5},
                   {:amount => 3536, :transaction_time => "2013-05-12 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 22, :matured_by => 8, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 5},
                   {:amount => 476746, :transaction_time => "2013-05-13 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 23, :matured_by => 5, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 5},
                   {:amount => 476573, :transaction_time => "2013-05-14 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 24, :matured_by => 6, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 6},
                   {:amount => 57657, :transaction_time => "2013-05-25 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 25, :matured_by => 7, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 6},
                   {:amount => 35673567, :transaction_time => "2013-05-26 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 26, :matured_by => 8, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 7},
                   {:amount => 765, :transaction_time => "2013-05-27 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 27, :matured_by => 5, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 7},
                   {:amount => 5654, :transaction_time => "2013-05-28 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 28, :matured_by => 6, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 8},
                   {:amount => 476574, :transaction_time => "2013-05-29 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 29, :matured_by => 7, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 8},
                   {:amount => 547657, :transaction_time => "2013-05-20 01:17:00 UTC", :company_id => 1, :contact_type => 2, :contact_id => 30, :matured_by => 8, :executive_type => 2, :transaction_type => "cheque", :micr_code => "df565d", :account_id => 8}
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

Account.create([
{:is_matured => true, :account_owner => 1, :account_name => "Wave soft pvt ltd", :number_of_employees => 50, :phone_number => 2435684, :website => "www.wavesoft.com", :ownership_type => "proprietership", :billing_address => "CBS, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 1},
{:is_matured => true, :account_owner => 3, :account_name => "Chakradhar pvt ltd", :number_of_employees => 96, :phone_number => 2458956, :website => "www.chakradhar.com", :ownership_type => "Private", :billing_address => "Ambad, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 2},
{:is_matured => true, :account_owner => 5, :account_name => "Global media pvt ltd", :number_of_employees => 56, :phone_number => 2458457, :website => "www.global.com", :ownership_type => "Public", :billing_address => "College Road, Nasik", :shipping_address => "Satputr, Nasik", :company_id => 1, :lead_id => 3},
{:is_matured => true, :account_owner => 7, :account_name => "Pointer pvt ltd", :number_of_employees => 20, :phone_number => 2365241, :website => "www.pointer.com", :ownership_type => "Private", :billing_address => "Nasik Road, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 4},
{:is_matured => true, :account_owner => 8, :account_name => "Creative logics pvt ltd", :number_of_employees => 82, :phone_number => 2859674, :website => "www.creative.com", :ownership_type => "proprietership", :billing_address => "Panchvati, Nasik", :shipping_address => "Satpur, Nasik", :company_id => 1, :lead_id => 5},
{:is_matured => true, :account_owner => 10, :account_name => "Mahindra pvt ltd", :number_of_employees => 75, :phone_number => 2568925, :website => "www.mahindra.com", :ownership_type => "Public", :billing_address => "Satputr, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 6},
{:is_matured => true, :account_owner => 12, :account_name => "Ceat pvt ltd", :number_of_employees => 35, :phone_number => 2351465, :website => "www.ceat.com", :ownership_type => "proprietership", :billing_address => "CBS, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 7},
{:is_matured => true, :account_owner => 13, :account_name => "Acian pvt ltd", :number_of_employees => 71, :phone_number => 2758545, :website => "www.acian.com", :ownership_type => "Private", :billing_address => "Ambad, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 8},
{:is_matured => false, :account_owner => 15, :account_name => "Matrix pvt ltd", :number_of_employees => 520, :phone_number => 2124252, :website => "www.matrix.com", :ownership_type => "proprietership", :billing_address => "Dwarka, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 9},
{:is_matured => false, :account_owner => 17, :account_name => "Sun soft pvt ltd", :number_of_employees => 150, :phone_number => 2758412, :website => "www.sunsoft.com", :ownership_type => "Public", :billing_address => "Gangapure road, Nasik", :shipping_address => "Satputr, Nasik", :company_id => 1, :lead_id => 10},
{:is_matured => false, :account_owner => 19, :account_name => "Tech soft pvt ltd", :number_of_employees => 60, :phone_number => 2362541, :website => "www.techsoft.com", :ownership_type => "Private", :billing_address => "Mehar Signal, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 11},
{:is_matured => false, :account_owner => 21, :account_name => "Om Sai pvt ltd", :number_of_employees => 94, :phone_number => 2854785, :website => "www.omsai.com", :ownership_type => "proprietership", :billing_address => "Jail Road, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 12},
{:is_matured => false, :account_owner => 23, :account_name => "Arres pvt ltd", :number_of_employees => 812, :phone_number => 2968574, :website => "www.arres.com", :ownership_type => "Private", :billing_address => "Nimani, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 13},
{:is_matured => false, :account_owner => 25, :account_name => "ESDS pvt ltd", :number_of_employees => 254, :phone_number => 2536241, :website => "www.esds.com", :ownership_type => "proprietership", :billing_address => "Satputr, Nasik", :shipping_address => "Satputr, Nasik", :company_id => 1, :lead_id => 14},
{:is_matured => false, :account_owner => 27, :account_name => "Net Win soft pvt ltd", :number_of_employees => 630, :phone_number => 2857496, :website => "www.netwin.com", :ownership_type => "Public", :billing_address => "CBS, Nasik", :shipping_address => "Satputr, Nasik", :company_id => 1, :lead_id => 15},
{:is_matured => true, :account_owner => 29, :account_name => "Sai soft pvt ltd", :number_of_employees => 30, :phone_number => 2456585, :website => "www.saisoft.com", :ownership_type => "proprietership", :billing_address => "Shalimar, Nasik", :shipping_address => "Satputr, Nasik", :company_id => 1, :lead_id => 16},
{:is_matured => true, :account_owner => 31, :account_name => "Tech Mahindra pvt ltd", :number_of_employees => 59, :phone_number => 2351425, :website => "www.Texh.com", :ownership_type => "Private", :billing_address => "Rane nagar, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 17},
{:is_matured => true, :account_owner => 33, :account_name => "Zodac pvt ltd", :number_of_employees => 69, :phone_number => 2758491, :website => "www.zodac.com", :ownership_type => "Private", :billing_address => "Satputr, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 18},
{:is_matured => true, :account_owner => 35, :account_name => "SoftTech pvt ltd", :number_of_employees => 72, :phone_number => 2758496, :website => "www.tofttech.com", :ownership_type => "proprietership", :billing_address => "Cidco, Nasik", :shipping_address => "Ambad, Nasik", :company_id => 1, :lead_id => 19},
{:is_matured => true, :account_owner => 37, :account_name => "MediaTech pvt ltd", :number_of_employees => 900, :phone_number => 2458745, :website => "www.mediaTech.com", :ownership_type => "Public", :billing_address => "CBS, Nasik", :shipping_address => "Sinnar, Nasik", :company_id => 1, :lead_id => 20}
])

Inventory.create([
                  { :product_id => 1, :quantity => 10, :company_id => 1},
                  { :product_id => 2, :quantity => 25, :company_id => 1},
                  { :product_id => 3, :quantity => 65, :company_id => 1},
                  { :product_id => 4, :quantity => 35, :company_id => 1},
                  { :product_id => 5, :quantity => 67, :company_id => 1},
])

InventoryAddition.create([
                         {:product_id => 1, :addition_date => "2013-02-20 01:17:00 UTC", :quantity => 20, :company_id => 1},
                         {:product_id => 2, :addition_date => "2013-05-21 02:17:00 UTC", :quantity => 25, :company_id => 1},
                         {:product_id => 3, :addition_date => "2013-05-22 05:17:00 UTC", :quantity => 42, :company_id => 1},
                         {:product_id => 4, :addition_date => "2013-05-22 10:17:00 UTC", :quantity => 52, :company_id => 1},
                         {:product_id => 5, :addition_date => "2013-05-23 12:17:00 UTC", :quantity => 63, :company_id => 1},
                         {:product_id => 2, :addition_date => "2013-05-23 07:17:00 UTC", :quantity => 12, :company_id => 1},
                         {:product_id => 5, :addition_date => "2013-05-24 03:17:00 UTC", :quantity => 32, :company_id => 1},
                         {:product_id => 3, :addition_date => "2013-05-25 02:17:00 UTC", :quantity => 62, :company_id => 1},
                         {:product_id => 2, :addition_date => "2013-05-26 04:17:00 UTC", :quantity => 42, :company_id => 1},
                         {:product_id => 3, :addition_date => "2013-05-27 06:17:00 UTC", :quantity => 32, :company_id => 1},
                         {:product_id => 5, :addition_date => "2013-05-27 06:17:00 UTC", :quantity => 25, :company_id => 1},
                         {:product_id => 5, :addition_date => "2013-05-27 06:17:00 UTC", :quantity => 44, :company_id => 1},
                         {:product_id => 5, :addition_date => "2013-05-27 06:17:00 UTC", :quantity => 63, :company_id => 1},
                         {:product_id => 2, :addition_date => "2013-05-28 06:17:00 UTC", :quantity => 12, :company_id => 1},
                         {:product_id => 1, :addition_date => "2013-05-28 06:17:00 UTC", :quantity => 45, :company_id => 1},
                         {:product_id => 1, :addition_date => "2013-05-28 06:17:00 UTC", :quantity => 52, :company_id => 1},
                         {:product_id => 3, :addition_date => "2013-05-28 06:17:00 UTC", :quantity => 85, :company_id => 1},
                         {:product_id => 4, :addition_date => "2013-05-29 06:17:00 UTC", :quantity => 96, :company_id => 1},
                         {:product_id => 4, :addition_date => "2013-05-29 06:17:00 UTC", :quantity => 67, :company_id => 1},
                         {:product_id => 5, :addition_date => "2013-05-29 06:17:00 UTC", :quantity => 54, :company_id => 1},
                         {:product_id => 4, :addition_date => "2013-05-30 06:17:00 UTC", :quantity => 34, :company_id => 1},
                         {:product_id => 4, :addition_date => "2013-05-30 06:17:00 UTC", :quantity => 23, :company_id => 1},
                         {:product_id => 3, :addition_date => "2013-05-30 06:17:00 UTC", :quantity => 98, :company_id => 1}
])

CallLog.create([
               {:call_result => "Confirm After Second Call", :subject => "Call for Marketing", :call_type => "Outbound", :call_purpose => "Administrative", :call_start_time => "2013-05-20 01:17:00 UTC", :call_duration => 256, :call_owner_id => 2, :lead_id => 1},
               {:call_result => "Requirement for web Site", :subject => "Call for Marketing", :call_type => "Inbound", :call_purpose => "Administrative", :call_start_time => "2013-05-21 02:20:00 UTC", :call_duration => 285, :call_owner_id => 3, :lead_id => 2},
               {:call_result => "Requirement for offline application", :subject => "Call for Marketing", :call_type => "Outbound", :call_purpose => "Administrative", :call_start_time => "2013-05-21 03:17:00 UTC", :call_duration => 500, :call_owner_id => 4, :lead_id => 3},
               {:call_result => "Requirement for web Application", :subject => "Call for Marketing", :call_type => "Inbound", :call_purpose => "Administrative", :call_start_time => "2013-05-21 01:17:00 UTC", :call_duration => 245, :call_owner_id => 4, :lead_id => 4},
               {:call_result => "Second meeting final", :subject => "about second meeting", :call_type => "Outbound", :call_purpose => "Prospective", :call_start_time => "2013-05-25 02:17:00 UTC", :call_duration => 120, :call_owner_id => 2, :lead_id => 1},
               {:call_result => "require demo", :subject => "about demo meeting", :call_type => "Outbound", :call_purpose => "Prospective", :call_start_time => "2013-05-25 03:17:00 UTC", :call_duration => 365, :call_owner_id => 3, :lead_id => 2},
               {:call_result => "Final after second call", :subject => "about second meeting", :call_type => "Inbound", :call_purpose => "Prospective", :call_start_time => "2013-05-26 04:17:00 UTC", :call_duration => 845, :call_owner_id => 4, :lead_id => 3},
               {:call_result => "agree to demo", :subject => "about second meeting", :call_type => "Outbound", :call_purpose => "Prospective", :call_start_time => "2013-05-26 05:17:00 UTC", :call_duration => 652, :call_owner_id => 4, :lead_id => 4},
               {:call_result => "Meeting for demo date final", :subject => "about demo meeting", :call_type => "Outbound", :call_purpose => "Demo", :call_start_time => "2013-05-27 01:17:00 UTC", :call_duration => 325, :call_owner_id => 2, :lead_id => 1},
               {:call_result => "Agree for demo", :subject => "about demo meeting", :call_type => "Inbound", :call_purpose => "Demo", :call_start_time => "2013-05-27 02:17:00 UTC", :call_duration => 635, :call_owner_id => 3, :lead_id => 2},
               {:call_result => "demo date confirm", :subject => "about demo meeting", :call_type => "Outbound", :call_purpose => "Demo", :call_start_time => "2013-05-27 03:17:00 UTC", :call_duration => 452, :call_owner_id => 4, :lead_id => 3},
               {:call_result => "he is agree and final after demo", :subject => "about demo meeting", :call_type => "Inbound", :call_purpose => "Demo", :call_start_time => "2013-05-27 04:17:00 UTC", :call_duration => 675, :call_owner_id => 4, :lead_id => 4},
               {:call_result => "negotiate for payment installment", :subject => "payment negotiation", :call_type => "Outbound", :call_purpose => "Negotiation", :call_start_time => "2013-05-29 01:17:00 UTC", :call_duration => 456, :call_owner_id => 2, :lead_id => 1},
               {:call_result => "negotiate for payment amount", :subject => "payment negotiation", :call_type => "Inbound", :call_purpose => "Negotiation", :call_start_time => "2013-05-29 02:17:00 UTC", :call_duration => 344, :call_owner_id => 3, :lead_id => 2},
               {:call_result => "negotiate for cost of product", :subject => "payment negotiation", :call_type => "Outbound", :call_purpose => "Negotiation", :call_start_time => "2013-05-29 03:17:00 UTC", :call_duration => 333, :call_owner_id => 4, :lead_id => 3},
               {:call_result => "final after negotiation", :subject => "payment negotiation", :call_type => "Inbound", :call_purpose => "Negotiation", :call_start_time => "2013-05-29 04:17:00 UTC", :call_duration => 545, :call_owner_id => 4, :lead_id => 4},
               {:call_result => "delivery time of product final", :subject => "about delivery time", :call_type => "Outbound", :call_purpose => "Support", :call_start_time => "2013-05-30 01:17:00 UTC", :call_duration => 645, :call_owner_id => 2, :lead_id => 1},
               {:call_result => "deliver in next 2 hour", :subject => "about delivery time", :call_type => "Inbound", :call_purpose => "Support", :call_start_time => "2013-05-30 02:17:00 UTC", :call_duration => 543, :call_owner_id => 3, :lead_id => 2},
               {:call_result => "delivery meeting final at 2pm today", :subject => "about delivery time", :call_type => "Outbound", :call_purpose => "Support", :call_start_time => "2013-05-30 03:17:00 UTC", :call_duration => 243, :call_owner_id => 4, :lead_id => 3},
               {:call_result => "delivery meeting final at 2pm next monday", :subject => "about delivery time", :call_type => "Outbound", :call_purpose => "Support", :call_start_time => "2013-05-30 04:17:00 UTC", :call_duration => 467, :call_owner_id => 4, :lead_id => 4}
])

ProductTransaction.create([
                          {:price => 32564, :product_id => 1, :transaction_id => 1, :lead_id => 1, :quantity => 1},
                          {:price => 45645, :product_id => 2, :transaction_id => 1, :lead_id => 1, :quantity => 4},
                          {:price => 4775, :product_id => 3, :transaction_id => 1, :lead_id => 1, :quantity => 2},
                          {:price => 6547, :product_id => 4, :transaction_id => 1, :lead_id => 1, :quantity => 3},
                          {:price => 76564, :product_id => 5, :transaction_id => 1, :lead_id => 1, :quantity => 7},
                          {:price => 6456, :product_id => 2, :transaction_id => 1, :lead_id => 1, :quantity => 10},
                          {:price => 32564, :product_id => 1, :transaction_id => 1, :lead_id => 1, :quantity => 23},
                          {:price => 56744, :product_id => 2, :transaction_id => 2, :lead_id => 2, :quantity => 2},
                          {:price => 45456, :product_id => 3, :transaction_id => 3, :lead_id => 3, :quantity => 1},
                          {:price => 45653, :product_id => 4, :transaction_id => 4, :lead_id => 4, :quantity => 1},
                          {:price => 878565, :product_id => 5, :transaction_id => 5, :lead_id => 5, :quantity => 1},
                          {:price => 35466, :product_id => 5, :transaction_id => 6, :lead_id => 6, :quantity => 3},
                          {:price => 786785, :product_id => 2, :transaction_id => 7, :lead_id => 7, :quantity => 1},
                          {:price => 67554, :product_id => 4, :transaction_id => 8, :lead_id => 8, :quantity => 1},
                          {:price => 657574, :product_id => 3, :transaction_id => 9, :lead_id => 9, :quantity => 2},
                          {:price => 75454, :product_id => 1, :transaction_id => 10, :lead_id => 10, :quantity => 1},
                          {:price => 34545, :product_id => 1, :transaction_id => 11, :lead_id => 11, :quantity => 1},
                          {:price => 76765, :product_id => 5, :transaction_id => 12, :lead_id => 15, :quantity => 5},
                          {:price => 68688, :product_id => 4, :transaction_id => 13, :lead_id => 16, :quantity => 1},
                          {:price => 86765, :product_id => 4, :transaction_id => 14, :lead_id => 12, :quantity => 1},
                          {:price => 67857, :product_id => 3, :transaction_id => 15, :lead_id => 13, :quantity => 2},
                          {:price => 56757, :product_id => 3, :transaction_id => 16, :lead_id => 14, :quantity => 2},
                          {:price => 87657, :product_id => 5, :transaction_id => 17, :lead_id => 19, :quantity => 1},
                          {:price => 567657, :product_id => 2, :transaction_id => 18, :lead_id => 18, :quantity => 1},
                          {:price => 567656, :product_id => 4, :transaction_id => 19, :lead_id => 17, :quantity => 1},
                          {:price => 687567, :product_id => 3, :transaction_id => 20, :lead_id => 21, :quantity => 2},
                          {:price => 897867, :product_id => 2, :transaction_id => 22, :lead_id => 27, :quantity => 2},
                          {:price => 464565, :product_id => 2, :transaction_id => 25, :lead_id => 23, :quantity => 1}
])

#################################################################
################# American Dental Clinic #######################
#################################################################

Company.create([
               {:company_name => "Dental Hospital", :company_address => "USA", :contact_number1 => 15465665556, :contact_number2 => 416515654165, :crm_customer_id => 2}
])

CrmCustomer.create([
                   {:first_name => "Pratik", :middle_name => "Piyush", :last_name => "Pagare", :address => "Indranil appt., Pathardi phata, Nashik", :amount_paid => 50000, :subscription_start => (Date.today - 1.year + 4.months), :subscription_ends => (Date.today + 4.months), :customer_type => 'B2C'}
])

User.create([
            {:first_name => "George", :last_name => "Stinson", :address => "New york, USA", :mobile_no => 9871456416, :email => "admin1@gmail.com", :password => "admin1123", :password_confirmation => "admin1123", :account_type => 1, :company_id => 2},
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
            {:title => "James Jack", :description => "Root canal patient", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "Bleaching patient", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 3, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 4, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 4, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 4, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 4, :leadable_type => "TeamLeader", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "hospital", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 5, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 6, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 7, :leadable_type => "SalesExecutive", :company_id => 2},
            {:title => "Patient", :description => "patient", :leadable_id => 8, :leadable_type => "SalesExecutive", :company_id => 2}
])

Contact.create([
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 21, :first_name => "James", :middle_name => "Jack", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9850766230, :landline_no=> 6612020, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 22, :first_name => "Adrian", :middle_name => "Bryan", :last_name => "Payton", :address => "nasik", :mobile_no => 9822882096, :landline_no=> 4552458, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 23, :first_name => "Adam", :middle_name => "Patrick", :last_name => "Quincy", :address => "lahavit", :mobile_no => 9812548265, :landline_no=> 2568585, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 24, :first_name => "Bryan", :middle_name => "James", :last_name => "Wallace", :address => "lahavit", :mobile_no => 9855849653, :landline_no=> 2568595, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 25, :first_name => "William", :middle_name => "Barry", :last_name => "Burton", :address => "pune", :mobile_no => 9875942156, :landline_no=> 2495353, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 26, :first_name => "Edward", :middle_name => "Roger", :last_name => "Hanson", :address => "lahavit", :mobile_no => 385599676, :landline_no=> 2238545, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 27, :first_name => "Johny", :middle_name => "Jacob", :last_name => "Robertson", :address => "lahavit", :mobile_no => 8888884083, :landline_no=> 2586935, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 28, :first_name => "Eddy", :middle_name => "Joshua", :last_name => "Harryson", :address => "nasik", :mobile_no => 9527836182, :landline_no=> 2458545, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 29, :first_name => "Tyler", :middle_name => "James", :last_name => "Smith", :address => "lahavit", :mobile_no => 9881955656, :landline_no=> 2759565, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 30, :first_name => "David", :middle_name => "William", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9850568596, :landline_no=> 2845965, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 31, :first_name => "Jayden", :middle_name => "Christopher", :last_name => "Johnson", :address => "lahavit", :mobile_no => 9850223366, :landline_no=> 2135262, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 32, :first_name => "Michael", :middle_name => "Daniel", :last_name => "Wilson", :address => "nasik", :mobile_no => 9527865965, :landline_no=> 2456956, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 33, :first_name => "Elijah", :middle_name => "Matthew", :last_name => "Harris", :address => "lahavit", :mobile_no => 9922142545, :landline_no=> 2568595, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 34, :first_name => "Noah", :middle_name => "Ethan", :last_name => "Thomas", :address => "lahavit", :mobile_no => 9823521254, :landline_no=> 2563654, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 35, :first_name => "Ashley", :middle_name => "William", :last_name => "White", :address => "pune", :mobile_no => 9875942156, :landline_no=> 2859674, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 36, :first_name => "Emily", :middle_name => "Emma", :last_name => "Garcia", :address => "lahavit", :mobile_no => 7385599667, :landline_no=> 2458565, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 37, :first_name => "Isabella", :middle_name => "Hannah", :last_name => "Lee", :address => "lahavit", :mobile_no => 9762588072, :landline_no=> 5825456, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 38, :first_name => "Madison", :middle_name => "Elizabeth", :last_name => "Lewis", :address => "nasik", :mobile_no => 9850232323, :landline_no=> 2569656, :contactable_type => "lead ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 39, :first_name => "Olivia", :middle_name => "Samantha", :last_name => "Hall", :address => "lahavit", :mobile_no => 9850500057, :landline_no=> 29865323, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 40, :first_name => "Abigail", :middle_name => "James", :last_name => "Wright", :address => "lahavit", :mobile_no => 9850700077, :landline_no=> 2895623, :contactable_type => "lead", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 21, :first_name => "johny", :middle_name => "Jack", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9850766220, :landline_no=> 2897845, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 22, :first_name => "osh", :middle_name => "Bryan", :last_name => "Payton", :address => "nasik", :mobile_no => 9850454545, :landline_no=> 2894512, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 23, :first_name => "mashush", :middle_name => "Patrick", :last_name => "Quincy", :address => "lahavit", :mobile_no => 9850757535, :landline_no=> 2892545, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 24, :first_name => "Bryan", :middle_name => "James", :last_name => "Wallace", :address => "lahavit", :mobile_no => 9881253562, :landline_no=> 2784512, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 25, :first_name => "William", :middle_name => "Barry", :last_name => "Burton", :address => "pune", :mobile_no => 9881565656, :landline_no=> 2789856, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 26, :first_name => "Edward", :middle_name => "Roger", :last_name => "Hanson", :address => "lahavit", :mobile_no => 9881858585, :landline_no=> 2785623, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 27, :first_name => "Johny", :middle_name => "Jacob", :last_name => "Robertson", :address => "lahavit", :mobile_no => 9850758595, :landline_no=> 2154512, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 28, :first_name => "Eddy", :middle_name => "Joshua", :last_name => "Harryson", :address => "nasik", :mobile_no => 9881056565, :landline_no=> 2352654, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 29, :first_name => "Tyler", :middle_name => "James", :last_name => "Smith", :address => "lahavit", :mobile_no => 9881545856, :landline_no=> 2856352, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 30, :first_name => "David", :middle_name => "William", :last_name => "Pattinson", :address => "lahavit", :mobile_no => 9881959595, :landline_no=> 2562535, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 31, :first_name => "Jayden", :middle_name => "Christopher", :last_name => "Johnson", :address => "lahavit", :mobile_no => 9850655455, :landline_no=> 2758595, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 32, :first_name => "Michael", :middle_name => "Daniel", :last_name => "Wilson", :address => "nasik", :mobile_no => 9823526242, :landline_no=> 2363636, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 33, :first_name => "Elijah", :middle_name => "Matthew", :last_name => "Harris", :address => "lahavit", :mobile_no => 7385599858, :landline_no=> 2562020, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 34, :first_name => "Noah", :middle_name => "Ethan", :last_name => "Thomas", :address => "lahavit", :mobile_no => 9325565656, :landline_no=> 2563030, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 35, :first_name => "Ashley", :middle_name => "William", :last_name => "White", :address => "pune", :mobile_no => 9226213332, :landline_no=> 2569656, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 36, :first_name => "Emily", :middle_name => "Emma", :last_name => "Garcia", :address => "lahavit", :mobile_no => 9272356545, :landline_no=> 2859567, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 37, :first_name => "Isabella", :middle_name => "Hannah", :last_name => "Lee", :address => "lahavit", :mobile_no => 7385564255, :landline_no=> 2525252, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 38, :first_name => "Madison", :middle_name => "Elizabeth", :last_name => "Lewis", :address => "nasik", :mobile_no => 9850253614, :landline_no=> 2986500, :contactable_type => "transaction ", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 39, :first_name => "Olivia", :middle_name => "Samantha", :last_name => "Hall", :address => "lahavit", :mobile_no => 9881526375, :landline_no=> 2150012, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2},
               {:email_id => "varade.vivek.123@gmail.com", :contactable_id => 40, :first_name => "Abigail", :middle_name => "James", :last_name => "Wright", :address => "lahavit", :mobile_no => 9922558899, :landline_no=> 2121212, :contactable_type => "transaction", :longitude => 73.8132, :latitude => 19.851, :company_id => 2}
])

Target.create([
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :target_month => 4, :target_year => 2013, :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :target_month => 4, :target_year => 2013, :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 60000, :achived => 40000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 50000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 6, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 100000, :achived => 70000, :target_month => 5, :target_year => 2013, :company_id => 2},
              {:targetable_id => 3, :targetable_type => "TeamLeader", :amount => 50000, :achived => 36500, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 80000, :achived => 75000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 4, :targetable_type => "TeamLeader", :amount => 100000, :achived => 80000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 40000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 6, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 50000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 60000, :achived => 60000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 39000, :achived => 6000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 5, :targetable_type => "SalesExecutive", :amount => 58000, :achived => 35000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 6, :targetable_type => "SalesExecutive", :amount => 56000, :achived => 25000, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 7, :targetable_type => "SalesExecutive", :amount => 62000, :achived => 61350, :target_month => 6, :target_year => 2013, :company_id => 2},
              {:targetable_id => 8, :targetable_type => "SalesExecutive", :amount => 61520, :achived => 44582, :target_month => 6, :target_year => 2013, :company_id => 2}
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
                   {:amount => 20000, :transaction_time => "2013-04-05 01:17:00 UTC", :company_id => 2, :account_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-06 01:17:00 UTC", :company_id => 2, :account_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-07 01:17:00 UTC", :company_id => 2, :account_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-08 01:17:00 UTC", :company_id => 2, :account_id => 1},
                   {:amount => 20000, :transaction_time => "2013-04-09 01:17:00 UTC", :company_id => 2, :account_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-10 01:17:00 UTC", :company_id => 2, :account_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-11 01:17:00 UTC", :company_id => 2, :account_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-12 01:17:00 UTC", :company_id => 2, :account_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-13 01:17:00 UTC", :company_id => 2, :account_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-14 01:17:00 UTC", :company_id => 2, :account_id => 2},
                   {:amount => 20000, :transaction_time => "2013-04-15 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-16 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-17 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-18 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-19 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-20 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-21 01:17:00 UTC", :company_id => 2, :account_id => 3},
                   {:amount => 20000, :transaction_time => "2013-04-22 01:17:00 UTC", :company_id => 2, :account_id => 4},
                   {:amount => 20000, :transaction_time => "2013-04-23 01:17:00 UTC", :company_id => 2, :account_id => 4},
                   {:amount => 20000, :transaction_time => "2013-04-24 01:17:00 UTC", :company_id => 2, :account_id => 4}
])



