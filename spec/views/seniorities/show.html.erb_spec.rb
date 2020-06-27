require "rails_helper"

RSpec.describe "seniorities/show", type: :view do
  before do
    @seniority = assign(:seniority, Seniority.create!(
                                      name: "MyText",
                                      prefix: "MyText",
                                      sort_index: 0,
                                    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
