class AddColumnToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :subscription_type, :string
  end
end
