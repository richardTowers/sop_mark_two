require "rails_helper"

RSpec.describe "teams/index", type: :view do
  before do
    assign(:teams, [
      Team.create!(
        name: "Name",
        start_time: "2020-01-01",
        description: "MyText",
      ),
      Team.create!(
        name: "Name",
        start_time: "2020-01-01",
        description: "MyText",
      ),
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
