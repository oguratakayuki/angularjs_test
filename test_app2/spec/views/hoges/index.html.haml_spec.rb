require 'rails_helper'

RSpec.describe "hoges/index", :type => :view do
  before(:each) do
    assign(:hoges, [
      Hoge.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Hoge.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of hoges" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
