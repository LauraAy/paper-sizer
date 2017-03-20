require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        :paper_height => 2.5,
        :paper_width => 3.5,
        :chain_lines => "Chain Lines",
        :format => "Format",
        :name => "Name",
        :result => "MyText"
      ),
      Paper.create!(
        :paper_height => 2.5,
        :paper_width => 3.5,
        :chain_lines => "Chain Lines",
        :format => "Format",
        :name => "Name",
        :result => "MyText"
      )
    ])
  end

  it "renders a list of papers" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Chain Lines".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
