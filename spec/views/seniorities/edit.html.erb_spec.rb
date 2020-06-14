require "rails_helper"

RSpec.describe "seniorities/edit", type: :view do
  let(:seniority) do
    assign(:seniority, Seniority.create!(name: "MyText", prefix: "MyText"))
  end

  it "renders the edit seniority form" do
    seniority
    render

    assert_select "form[action=?][method=?]", seniority_path(seniority), "post" do
      assert_select "textarea[name=?]", "seniority[name]"

      assert_select "textarea[name=?]", "seniority[prefix]"
    end
  end
end
