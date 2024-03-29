require 'rails_helper'

RSpec.describe "projects/new", :type => :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :description => "MyText",
      :archive => "",
      :user => nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_archive[name=?]", "project[archive]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"
    end
  end
end
