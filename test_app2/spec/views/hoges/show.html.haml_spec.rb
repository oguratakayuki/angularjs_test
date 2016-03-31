require 'rails_helper'

RSpec.describe "hoges/show", :type => :view do
  before(:each) do
    @hoge = assign(:hoge, Hoge.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
