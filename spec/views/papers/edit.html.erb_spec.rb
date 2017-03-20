require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :paper_height => 1.5,
      :paper_width => 1.5,
      :chain_lines => "MyString",
      :format => "MyString",
      :name => "MyString",
      :result => "MyText"
    ))
  end

  it "renders the edit paper form" do
    render

    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do

      assert_select "input#paper_paper_height[name=?]", "paper[paper_height]"

      assert_select "input#paper_paper_width[name=?]", "paper[paper_width]"

      assert_select "input#paper_chain_lines[name=?]", "paper[chain_lines]"

      assert_select "input#paper_format[name=?]", "paper[format]"

      assert_select "input#paper_name[name=?]", "paper[name]"

      assert_select "textarea#paper_result[name=?]", "paper[result]"
    end
  end
end
