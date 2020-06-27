require "rails_helper"

RSpec.describe "seniorities/edit", type: :view do
  let(:seniority) do
    assign(:seniority, Seniority.create!(name: "MyText", prefix: "MyText", sort_index: 0))
  end

  it "renders the edit seniority form" do
    seniority
    render

    assert_select "form[action=?][method=?]", seniority_path(seniority), "post" do
      assert_select "input[name=?]", "seniority[name]"
      assert_select "input[name=?]", "seniority[prefix]"
    end
  end
end
