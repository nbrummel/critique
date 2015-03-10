# seed users
@user = User.create!(email: 	 'edmund@example.com',
										 password: '12341234',
										 name: 		 'Edmund')
User.create!(email: 	 'foobar@example.com',
						 password: '12341234',
						 name:  	 'Foobar')

users = 30.times do
	name  	 = Faker::Name.name
	email 	 = Faker::Internet.email
	password = '12341234'
	User.create!(email: email, password: password, name: name)
end

# seed projects
users = User.order(:created_at).take(6)
10.times do
	name = Faker::Lorem.words(rand(2..4)).join(' ')
	description = Faker::Lorem.paragraph
	location = Faker::Address.city + ', ' + Faker::Address.state
	category = Faker::Lorem.word
 	users.each { |user| user.projects.create!(name: name,
 																					  description: description,
 																					  location: location,
 																					  category: category) }
end
