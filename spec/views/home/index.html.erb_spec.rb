require "rails_helper"

RSpec.describe "home/index", type: :view do
  it "links to resources" do
    render
    assert_select "a:match('href', ?)", people_path
    assert_select "a:match('href', ?)", roles_path
    assert_select "a:match('href', ?)", seniorities_path
    assert_select "a:match('href', ?)", teams_path
  end
end
