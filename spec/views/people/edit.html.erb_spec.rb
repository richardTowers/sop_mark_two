require "rails_helper"

RSpec.describe "people/edit", type: :view do
  let(:person) do
    role = Role.create!(
      name: "Developer",
      short_name: "DEV",
    )
    seniority = Seniority.create!(
      name: "Senior",
      prefix: "S",
    )
    assign(:person, Person.create!(
                      current_name: "MyString",
                      role: role,
                      seniority: seniority,
                    ))
  end

  it "renders the edit person form" do
    person
    render

    assert_select "form[action=?][method=?]", person_path(person), "post" do
      assert_select "input[name=?]", "person[current_name]"
      assert_select "input[name=?]", "person[role_id]"
      assert_select "input[name=?]", "person[seniority_id]"
    end
  end
end
