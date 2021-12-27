require "csv"

Person = Struct.new(:name, :role, :grade, :discipline, :cost_centre, :team, :fte)

desc "Imports people, roles, seniorities etc. from tmp/govuk-headcount.tsv"
task import_from_people_plan: :environment do
  people = CSV.read(Rails.root.join("tmp/govuk-headcount.tsv"), col_sep: "\t").map do |line|
    Person.new(
      (line[0] || "").strip,
      (line[1] || "").strip,
      (line[2] || "").strip,
      (line[3] || "").strip,
      (line[4] || "").strip,
      (line[5] || "").strip,
      line[6].to_f,
    )
  end
  teams = people.map(&:team).uniq.sort
  roles = people.map(&:role).uniq.sort

  $stdout.puts teams
  $stdout.puts roles
  # TODO - actually import these things into the database.
  # TODO The data's a bit messy so this could get a bit gross.
end
