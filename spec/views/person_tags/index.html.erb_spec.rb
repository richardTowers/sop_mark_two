require "rails_helper"

RSpec.describe "person_tags/index", type: :view do
  before do
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
    first_tag = Tag.create!(value: "first_tag")
    second_tag = Tag.create!(value: "second_tag")
    assign(:person_tags, [
      PersonTag.create!(
        person: person,
        tag: first_tag,
      ),
      PersonTag.create!(
        person: person,
        tag: second_tag,
      ),
    ])
  end

  it "renders a list of person_tags" do
    render
    assert_select "tr>td", text: "Some name", count: 2
    assert_select "tr>td", text: "first_tag", count: 1
    assert_select "tr>td", text: "second_tag", count: 1
  end
end
