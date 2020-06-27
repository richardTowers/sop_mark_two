require "rails_helper"

RSpec.describe "person_tags/show", type: :view do
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
    person = Person.create!(
      current_name: "Some name",
      role: role,
      seniority: seniority,
    )
    tag = Tag.create!(value: "some_tag")
    assign(:person_tag, PersonTag.create!(
                          person: person,
                          tag: tag,
                        ))
  end

  it "renders attributes in <p>" do
    person
    render
    expect(rendered).to match(/Some name/)
    expect(rendered).to match(/some_tag/)
  end
end
