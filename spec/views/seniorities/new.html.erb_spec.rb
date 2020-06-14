require "rails_helper"

RSpec.describe "seniorities/new", type: :view do
  before do
    assign(:seniority, Seniority.new(
                         name: "MyText",
                         prefix: "MyText",
                       ))
  end

  it "renders new seniority form" do
    render

    assert_select "form[action=?][method=?]", seniorities_path, "post" do
      assert_select "textarea[name=?]", "seniority[name]"

      assert_select "textarea[name=?]", "seniority[prefix]"
    end
  end
end
