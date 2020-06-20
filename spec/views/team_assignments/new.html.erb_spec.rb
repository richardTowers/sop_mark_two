require "rails_helper"

RSpec.describe "team_assignments/new", type: :view do
  let(:teams) do
    assign(:teams, [Team.create!(name: "Some team", start_time: "2020-01-01")])
  end

  let(:people) do
    assign(:people, [Person.create!(
      current_name: "Some person",
      role: Role.create!(name: "Developer", short_name: "DEV"),
      seniority: Seniority.create!(name: "Senior"),
    )])
  end

  before do
    assign(:team_assignment, TeamAssignment.new(
                               person: nil,
                               team: nil,
                             ))
  end

  it "renders new team_assignment form" do
    teams
    people
    render

    assert_select "form[action=?][method=?]", team_assignments_path, "post" do
      assert_select "select[name=?]", "team_assignment[person_id]"
      assert_select "select[name=?]", "team_assignment[team_id]"
    end
  end
end
