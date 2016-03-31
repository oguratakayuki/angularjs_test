require 'rails_helper'

RSpec.describe "hoges/edit", :type => :view do
  before(:each) do
    @hoge = assign(:hoge, Hoge.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit hoge form" do
    render

    assert_select "form[action=?][method=?]", hoge_path(@hoge), "post" do

      assert_select "input#hoge_title[name=?]", "hoge[title]"

      assert_select "textarea#hoge_description[name=?]", "hoge[description]"
    end
  end
end
