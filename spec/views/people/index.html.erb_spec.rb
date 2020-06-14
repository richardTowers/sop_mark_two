require "rails_helper"

RSpec.describe "people/index", type: :view do
  before do
    role = Role.create!(name: "Developer", short_name: "DEV")
    seniority = Seniority.create!(name: "Senior", prefix: "S")
    assign(:people, [
      Person.create!(
        current_name: "Name 1",
        role: role,
        seniority: seniority,
      ),
      Person.create!(
        current_name: "Name 2",
        role: role,
        seniority: seniority,
      ),
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", text: "Name 1", count: 1
    assert_select "tr>td", text: "Name 2", count: 1
  end
end
