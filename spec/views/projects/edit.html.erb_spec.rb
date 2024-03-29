require 'rails_helper'

RSpec.describe "projects/edit", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "MyString",
      :description => "MyText",
      :archive => "",
      :user => nil
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_archive[name=?]", "project[archive]"

      assert_select "input#project_user_id[name=?]", "project[user_id]"
    end
  end
end
