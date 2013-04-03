# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create(
    [
            {:email => "admin@gmail.com", :password => "admin123", :password_confirmation => "admin123", :account_type => "1"},
            {:email => "team_leader@gmail.com", :password => "team_leader123", :password_confirmation => "team_leader123", :account_type => "2"},
            {:email => "sales_executive@gmail.com", :password => "sales_executive123", :password_confirmation => "sales_executive123", :account_type => "3"},
            {:email => "sales_executive1@gmail.com", :password => "sales_executive1123", :password_confirmation => "sales_executive1123", :account_type => "3"}


    ]
)


