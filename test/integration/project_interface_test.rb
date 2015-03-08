require 'test_helper'

class ProjectInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
  	@user = users(:edmund)
  end

  test 'logged in user create project' do
  	# log in user
  	get new_user_session_path
  	post user_session_path user: { email: @user.email, password: 'password' }
  end
end
