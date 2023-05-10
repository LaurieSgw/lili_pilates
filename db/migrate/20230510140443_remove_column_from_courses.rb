class RemoveColumnFromCourses < ActiveRecord::Migration[7.0]
  def change
    remove_columns :courses, :subscription_type
  end
end
