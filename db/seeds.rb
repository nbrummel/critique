# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
projects = Project.create([{:id => 1, :name =>'Critique', :type => 'application', location: '' , :description => '' },{:id => 2, :name =>'Staffolution', :type => 'application', :location => '' , :description => ''  }])

# users = User.create(email: 'my@email.com', password: '123').save(validate: false)


