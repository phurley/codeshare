require 'rails_helper'

RSpec.describe "snippets/edit", :type => :view do
  before(:each) do
    @snippet = assign(:snippet, Snippet.create!(
      :title => "MyString",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit snippet form" do
    render

    assert_select "form[action=?][method=?]", snippet_path(@snippet), "post" do

      assert_select "input#snippet_title[name=?]", "snippet[title]"

      assert_select "textarea#snippet_description[name=?]", "snippet[description]"

      assert_select "input#snippet_user_id[name=?]", "snippet[user_id]"
    end
  end
end
