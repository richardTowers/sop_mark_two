require "rails_helper"

RSpec.describe "team_assignments/index", type: :view do
  let(:teams) do
    assign(:teams, [Team.create!(name: "Some team", start_time: "2020-01-01")])
  end

  let(:people) do
    dev = Role.create!(name: "Developer", short_name: "DEV")
    senior = Seniority.create!(name: "Senior", sort_index: 0)
    assign(:people, [
      Person.create!(
        current_name: "Some person",
        role: dev,
        seniority: senior,
      ),
      Person.create!(
        current_name: "Some other person",
        role: dev,
        seniority: senior,
      )
    ])
  end

  before do
    assign(:team_assignments, [
      TeamAssignment.create!(
        person: people.first,
        team: teams.first,
      ),
      TeamAssignment.create!(
        person: people.last,
        team: teams.first,
      ),
    ])
  end

  it "renders a list of team_assignments" do
    render
    assert_select "tr>td", text: "Some person", count: 1
    assert_select "tr>td", text: "Some other person", count: 1
    assert_select "tr>td", text: "Some team", count: 2
  end
end
