class AddReferenceToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :subscription

  end
end
