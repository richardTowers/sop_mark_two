require "rails_helper"

RSpec.describe "team_assignments/edit", type: :view do
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

  let(:team_assignment) do
    assign(:team_assignment, TeamAssignment.create!(
                               person: people.first,
                               team: teams.first,
                             ))
  end

  it "renders the edit team_assignment form" do
    team_assignment
    render

    assert_select "form[action=?][method=?]", team_assignment_path(team_assignment), "post" do
      assert_select "select[name=?]", "team_assignment[person_id]"
      assert_select "select[name=?]", "team_assignment[team_id]"
    end
  end
end
