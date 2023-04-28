class ChangeColumnsToCourses < ActiveRecord::Migration[7.0]
  def change
    remove_columns :courses, :hour
    change_column :courses, :date, :datetime
  end
end
