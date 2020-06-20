require "rails_helper"

RSpec.describe Team, type: :model do
  it "validates when required fields are provided" do
    team = described_class.new(name: "Some team", start_time: "2020-01-01", end_time: "", description: "")
    expect(team.validate).to be true
  end

  it "validates presence of name and start_time" do
    team = described_class.new(name: "", start_time: "", end_time: "", description: "")
    expect(team.validate).to be false
    expect(team.errors.details[:name]).to eql [{ error: :blank }]
    expect(team.errors.details[:start_time]).to eql [{ error: :blank }]
  end
end
