require "rails_helper"

RSpec.describe "tags/index", type: :view do
  before do
    assign(:tags, [
      Tag.create!(
        value: "Value",
      ),
      Tag.create!(
        value: "Value",
      ),
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", text: "Value".to_s, count: 2
  end
end
