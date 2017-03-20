require 'rails_helper'

RSpec.describe "manuscripts/edit", type: :view do
  before(:each) do
    @manuscript = assign(:manuscript, Manuscript.create!(
      :repository => "MyString",
      :call_number => "MyString",
      :ms_format => "MyString"
    ))
  end

  it "renders the edit manuscript form" do
    render

    assert_select "form[action=?][method=?]", manuscript_path(@manuscript), "post" do

      assert_select "input#manuscript_repository[name=?]", "manuscript[repository]"

      assert_select "input#manuscript_call_number[name=?]", "manuscript[call_number]"

      assert_select "input#manuscript_ms_format[name=?]", "manuscript[ms_format]"
    end
  end
end
