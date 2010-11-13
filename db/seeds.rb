# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
puts 'SETTING UP EXAMPLE USERS'
user1 = User.create! :first_name => 'First', :last_name => 'User', :username => 'firstuser', :email => 'user@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user1.username
user2 = User.create! :first_name => 'Second', :last_name => 'User', :username => 'seconduser', :email => 'otheruser@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.username
#user1.save
#user2.save
puts 'SETTING UP EXAMPLE PROJECTS'
project1 = Project.create! :project_name => 'First Project', :project_description => 'Project 1 Description', :nice_name => 'project1'
puts 'New project created: ' << project1.project_name
project2 = Project.create! :project_name => 'Second Project', :project_description => 'Project 2 Description', :nice_name => 'project2'
puts 'New project created: ' << project2.project_name
puts 'SETTING UP EXAMPLE SUBDOMAINS'
subdomain1 = Subdomain.create! :name => 'project1'
puts 'Created subdomain: ' << subdomain1.name
subdomain2 = Subdomain.create! :name => 'project2'
puts 'Created subdomain: ' << subdomain2.name
project1.subdomains << subdomain1
project1.save
project2.subdomains << subdomain2
project2.save

