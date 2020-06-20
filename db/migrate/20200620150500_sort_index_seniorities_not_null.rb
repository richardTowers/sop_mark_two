class SortIndexSenioritiesNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :seniorities, :sort_index, false
  end
end
