require "rails_helper"

RSpec.describe "person_tags/new", type: :view do
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

  before do
    assign(:person_tag, PersonTag.new(
                          person: nil,
                          tag: nil,
                        ))
  end

  it "renders new person_tag form" do
    people
    tags
    render

    assert_select "form[action=?][method=?]", person_tags_path, "post" do
      assert_select "select[name=?]", "person_tag[person_id]"
      assert_select "select[name=?]", "person_tag[tag_id]"
    end
  end
end
