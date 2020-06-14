require "rails_helper"

RSpec.describe "roles/show", type: :view do
  before do
    assign(:role, Role.create!(name: "Developer", short_name: "DEV"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Developer/)
    expect(rendered).to match(/DEV/)
  end
end
