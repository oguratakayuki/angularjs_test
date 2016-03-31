require 'rails_helper'

RSpec.describe "hoges/new", :type => :view do
  before(:each) do
    assign(:hoge, Hoge.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new hoge form" do
    render

    assert_select "form[action=?][method=?]", hoges_path, "post" do

      assert_select "input#hoge_title[name=?]", "hoge[title]"

      assert_select "textarea#hoge_description[name=?]", "hoge[description]"
    end
  end
end
