class CreatePersonTags < ActiveRecord::Migration[6.0]
  def change
    create_table :person_tags do |t|
      t.references :person, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
