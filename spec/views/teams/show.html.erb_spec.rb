require "rails_helper"

RSpec.describe "teams/show", type: :view do
  before do
    @team = assign(:team, Team.create!(
                            name: "Name",
                            start_time: "2020-01-01",
                            description: "MyText",
                          ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
