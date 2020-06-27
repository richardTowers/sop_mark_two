require "rails_helper"

RSpec.describe "tags/edit", type: :view do
  let(:tag) do
    assign(:tag, Tag.create!(
                   value: "MyString",
                 ))
  end

  it "renders the edit tag form" do
    tag
    render

    assert_select "form[action=?][method=?]", tag_path(tag), "post" do
      assert_select "input[name=?]", "tag[value]"
    end
  end
end
