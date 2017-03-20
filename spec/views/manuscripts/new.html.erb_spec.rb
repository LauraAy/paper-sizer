require 'rails_helper'

RSpec.describe "manuscripts/new", type: :view do
  before(:each) do
    assign(:manuscript, Manuscript.new(
      :repository => "MyString",
      :call_number => "MyString",
      :ms_format => "MyString"
    ))
  end

  it "renders new manuscript form" do
    render

    assert_select "form[action=?][method=?]", manuscripts_path, "post" do

      assert_select "input#manuscript_repository[name=?]", "manuscript[repository]"

      assert_select "input#manuscript_call_number[name=?]", "manuscript[call_number]"

      assert_select "input#manuscript_ms_format[name=?]", "manuscript[ms_format]"
    end
  end
end
