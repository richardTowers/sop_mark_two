require "rails_helper"

RSpec.describe "teams/edit", type: :view do
  let(:team) do
    assign(:team, Team.create!(
                    name: "MyString",
                    start_time: "2020-01-01",
                    description: "MyText",
                  ))
  end

  it "renders the edit team form" do
    team
    render

    assert_select "form[action=?][method=?]", team_path(team), "post" do
      assert_select "input[name=?]", "team[name]"

      assert_select "textarea[name=?]", "team[description]"
    end
  end
end
