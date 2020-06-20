require "rails_helper"

RSpec.describe "home/index.html.erb", type: :view do
  it "links to people" do
    render
    assert_select "a:match('href', ?)", people_path
  end

  it "links to roles" do
    render
    assert_select "a:match('href', ?)", roles_path
  end

  it "links to seniorities" do
    render
    assert_select "a:match('href', ?)", seniorities_path
  end
end
