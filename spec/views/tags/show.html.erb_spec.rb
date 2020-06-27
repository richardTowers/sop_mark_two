require "rails_helper"

RSpec.describe "tags/show", type: :view do
  before do
    @tag = assign(:tag, Tag.create!(
                          value: "Value",
                        ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Value/)
  end
end
