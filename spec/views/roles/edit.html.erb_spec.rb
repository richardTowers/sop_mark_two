require "rails_helper"

RSpec.describe "roles/edit", type: :view do
  let(:role) do
    assign(:role, Role.create!(name: "MyText", short_name: "MyText"))
  end

  it "renders the edit role form" do
    role
    render

    assert_select "form[action=?][method=?]", role_path(role), "post" do
      assert_select "input[name=?]", "role[name]"
      assert_select "input[name=?]", "role[short_name]"
    end
  end
end
