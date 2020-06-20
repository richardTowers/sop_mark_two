class CreateTeamAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :team_assignments do |t|
      t.references :person, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
