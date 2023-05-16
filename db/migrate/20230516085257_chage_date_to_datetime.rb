class ChageDateToDatetime < ActiveRecord::Migration[7.0]
  def change
    change_column :courses, :date, :datetime
  end
end
