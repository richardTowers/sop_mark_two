class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :current_name
      t.references :role, null: false, foreign_key: true
      t.references :seniority, null: false, foreign_key: true

      t.timestamps
    end
  end
end
