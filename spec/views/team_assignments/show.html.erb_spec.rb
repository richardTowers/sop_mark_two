require "rails_helper"

RSpec.describe "team_assignments/show", type: :view do
  before do
    dev = Role.create!(name: "Developer", short_name: "DEV")
    senior = Seniority.create!(name: "Senior")
    person = Person.create!(
      current_name: "Some person",
      role: dev,
      seniority: senior,
    )
    team = Team.create!(
      name: "Some team",
      start_time: "2020-01-01",
    )

    @team_assignment = assign(:team_assignment, TeamAssignment.create!(
                                                  person: person,
                                                  team: team,
                                                ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
