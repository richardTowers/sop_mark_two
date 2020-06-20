class AddSortIndexToSeniorities < ActiveRecord::Migration[6.0]
  def change
    add_column :seniorities, :sort_index, :integer
  end
end
