require "rails_helper"

RSpec.describe "roles/new", type: :view do
  before do
    assign(:role, Role.new(name: "MyText", short_name: "MyText"))
  end

  it "renders new role form" do
    render
    assert_select "form[action=?][method=?]", roles_path, "post" do
      assert_select "textarea[name=?]", "role[name]"
      assert_select "textarea[name=?]", "role[short_name]"
    end
  end
end
