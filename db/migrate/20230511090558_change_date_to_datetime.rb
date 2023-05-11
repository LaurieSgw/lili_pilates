class ChangeDateToDatetime < ActiveRecord::Migration[7.0]
  def change
    change_column :reviews, :date, :datetime
  end
end
