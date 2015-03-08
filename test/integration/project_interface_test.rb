require 'test_helper'

class ProjectInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
  	@user = users(:edmund)
  end

  test 'logged in user create project' do
  	# log in user
  	get new_user_session_path
  	post user_session_path user: { email: @user.email, password: 'password' }
  	# create valid project
  	get new_project_path
  	assert_template 'projects/new'
  	name = Faker::Lorem.sentence(3)
  	description = Faker::Lorem.paragraph
  	locaton = Faker::Address.city + ', ' + Faker::Address.state
  	category = Faker::Lorem.word
  	post_via_redirect projects_path project: { name: name,
  																description: description,
  																locaton: locaton,
  																category: category }
  	assert_template 'projects/show'
  end
end
