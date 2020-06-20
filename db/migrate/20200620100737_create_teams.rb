class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.date :start_time
      t.date :end_time
      t.text :description

      t.timestamps
    end
  end
end
