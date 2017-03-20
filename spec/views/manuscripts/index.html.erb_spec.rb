require 'rails_helper'

RSpec.describe "manuscripts/index", type: :view do
  before(:each) do
    assign(:manuscripts, [
      Manuscript.create!(
        :repository => "Repository",
        :call_number => "Call Number",
        :ms_format => "Ms Format"
      ),
      Manuscript.create!(
        :repository => "Repository",
        :call_number => "Call Number",
        :ms_format => "Ms Format"
      )
    ])
  end

  it "renders a list of manuscripts" do
    render
    assert_select "tr>td", :text => "Repository".to_s, :count => 2
    assert_select "tr>td", :text => "Call Number".to_s, :count => 2
    assert_select "tr>td", :text => "Ms Format".to_s, :count => 2
  end
end
