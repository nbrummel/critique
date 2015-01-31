require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  def setup
  	@project = Project.new(name: "Example Project",
  												 category: "Web Application",
  												 location: "Pasadena, CA",
  												 descriptio: "Just bunch of dudes making an app")
  	debugger
  end

  test 'should be valid' do
  	debugger
  	assert @project.valid?
  end

  test 'name should be present' do
  	@project.name = "   "
  	assert_not @project.valid?
  end
end
