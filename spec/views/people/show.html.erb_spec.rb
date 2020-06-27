require "rails_helper"

RSpec.describe "people/show", type: :view do
  let(:person) do
    role = Role.create!(
      name: "Developer",
      short_name: "DEV",
    )
    seniority = Seniority.create!(
      name: "Senior",
      prefix: "S",
      sort_index: 0,
    )
    assign(:person, Person.create!(
                      current_name: "Current Name",
                      role: role,
                      seniority: seniority,
                    ))
  end

  it "renders attributes in <p>" do
    person
    render
    expect(rendered).to match(/Current Name/)
  end
end
