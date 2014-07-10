require 'rails_helper'

RSpec.describe "snippets/new", :type => :view do
  before(:each) do
    assign(:snippet, Snippet.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new snippet form" do
    render

    assert_select "form[action=?][method=?]", snippets_path, "post" do

      assert_select "input#snippet_title[name=?]", "snippet[title]"

      assert_select "textarea#snippet_description[name=?]", "snippet[description]"

      assert_select "input#snippet_user_id[name=?]", "snippet[user_id]"
    end
  end
end
