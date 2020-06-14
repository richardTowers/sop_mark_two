require "rails_helper"

RSpec.describe "seniorities/index", type: :view do
  before do
    assign(:seniorities, [
      Seniority.create!(
        name: "Senior",
        prefix: "S",
      ),
      Seniority.create!(
        name: "Junior",
        prefix: "J",
      ),
    ])
  end

  it "renders a list of seniorities" do
    render
    assert_select "tr>td", text: "Senior".to_s, count: 1
    assert_select "tr>td", text: "S".to_s, count: 1
    assert_select "tr>td", text: "Junior".to_s, count: 1
    assert_select "tr>td", text: "J".to_s, count: 1
  end
end
