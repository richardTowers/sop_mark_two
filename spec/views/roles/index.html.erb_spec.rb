require "rails_helper"

RSpec.describe "roles/index", type: :view do
  before do
    assign(:roles, [
      Role.create!(
        name: "Developer",
        short_name: "DEV",
      ),
      Role.create!(
        name: "Designer",
        short_name: "DES",
      ),
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", text: "Developer".to_s, count: 1
    assert_select "tr>td", text: "DEV".to_s, count: 1
    assert_select "tr>td", text: "Developer".to_s, count: 1
    assert_select "tr>td", text: "DES".to_s, count: 1
  end
end
