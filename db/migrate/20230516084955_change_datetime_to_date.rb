class ChangeDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :courses, :date, :date
  end
end
