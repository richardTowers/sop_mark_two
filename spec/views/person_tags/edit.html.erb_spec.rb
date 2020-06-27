require "rails_helper"

RSpec.describe "person_tags/edit", type: :view do
  let(:people) do
    role = Role.create!(
      name: "Developer",
      short_name: "DEV",
    )
    seniority = Seniority.create!(
      name: "Senior",
      prefix: "S",
      sort_index: 0,
    )
    assign(:people, [Person.create!(
      current_name: "Some name",
      role: role,
      seniority: seniority,
    )])
  end

  let(:tags) do
    assign(:tags, [Tag.create!(value: "some_tag")])
  end

  let(:person_tag) do
    assign(:person_tag, PersonTag.create!(
                          person: people.first,
                          tag: tags.first,
                        ))
  end

  it "renders the edit person_tag form" do
    person_tag
    render

    assert_select "form[action=?][method=?]", person_tag_path(person_tag), "post" do
      assert_select "select[name=?]", "person_tag[person_id]"
      assert_select "select[name=?]", "person_tag[tag_id]"
    end
  end
end
