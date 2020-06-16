require "rails_helper"

RSpec.describe "people/edit", type: :view do
  let(:roles) do
    role = Role.create!(
      name: "Developer",
      short_name: "DEV",
    )
    assign(:roles, [role])
  end

  let(:seniorities) do
    seniority = Seniority.create!(
      name: "Senior",
      prefix: "S",
    )
    assign(:seniorities, [seniority])
  end

  let(:person) do
    assign(:person, Person.create!(
                      current_name: "MyString",
                      role: roles.first,
                      seniority: seniorities.first,
                    ))
  end

  it "renders the edit person form" do
    roles
    seniorities
    person
    render

    assert_select "form[action=?][method=?]", person_path(person), "post" do
      assert_select "input[name=?]", "person[current_name]"
      assert_select "select[name=?]", "person[role_id]"
      assert_select "select[name=?]", "person[seniority_id]"
    end
  end
end
