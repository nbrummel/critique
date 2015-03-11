require 'test_helper'

class ProjectInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
  	@edmund = users(:edmund)
    @calvin = users(:calvin)
  end

  test 'logged in user create project' do
  	# log in user
  	get new_user_session_path
  	post user_session_path user: { email: @edmund.email, password: 'password' }
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

  test 'project index page' do
    # before logged in, should redirect
    get projects_path
    assert_redirected_to new_user_session_path
    # log in user
    get new_user_session_path
    post user_session_path user: { email: @edmund.email, password: 'password' }
    get projects_path
    assert_template 'projects/index'
    assert_select 'div.pagination'
    projects = @edmund.projects.take(10)
    projects.each do |project|
      assert_match project.name,        response.body
      assert_match project.description, response.body
    end
    # log in as another user with no projects
    delete destroy_user_session_path
    get new_user_session_path
    post user_session_path user: { email: @calvin.email, password: 'password' }
    # should not show any project from edmund
    get projects_path
    assert_select 'div.pagination', count: 0
    projects.each do |project|
      assert_no_match project.name,        response.body
      assert_no_match project.description, response.body
    end
    # but should show his own projects
    projects = @calvin.projects
    projects.each do |project|
      assert_match project.name,        response.body
      assert_match project.description, response.body
    end
  end
end
