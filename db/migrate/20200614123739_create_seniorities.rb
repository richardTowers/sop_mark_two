class CreateSeniorities < ActiveRecord::Migration[6.0]
  def change
    create_table :seniorities do |t|
      t.text :name
      t.text :prefix

      t.timestamps
    end
  end
end
