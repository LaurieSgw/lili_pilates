class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.date :date
      t.integer :available_places
      t.boolean :trial_course

      t.timestamps
    end
  end
end
