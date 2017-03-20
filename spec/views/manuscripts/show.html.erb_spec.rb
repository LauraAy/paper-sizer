require 'rails_helper'

RSpec.describe "manuscripts/show", type: :view do
  before(:each) do
    @manuscript = assign(:manuscript, Manuscript.create!(
      :repository => "Repository",
      :call_number => "Call Number",
      :ms_format => "Ms Format"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Repository/)
    expect(rendered).to match(/Call Number/)
    expect(rendered).to match(/Ms Format/)
  end
end
