require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      :paper_height => 2.5,
      :paper_width => 3.5,
      :chain_lines => "Chain Lines",
      :format => "Format",
      :name => "Name",
      :result => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Chain Lines/)
    expect(rendered).to match(/Format/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
