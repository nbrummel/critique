require 'rails_helper'

RSpec.describe "projects/new", :type => :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :description => "MyText",
      :location => "MyString",
      :type => ""
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_location[name=?]", "project[location]"

      assert_select "input#project_type[name=?]", "project[type]"
    end
  end
end
