require "rails_helper"

RSpec.describe "people/new", type: :view do
  before do
    assign(:roles, [])
    assign(:seniorities, [])
    assign(:person, Person.new(
                      current_name: "MyString",
                      role: nil,
                      seniority: nil,
                    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input[name=?]", "person[current_name]"
      assert_select "select[name=?]", "person[role_id]"
      assert_select "select[name=?]", "person[seniority_id]"
    end
  end
end
