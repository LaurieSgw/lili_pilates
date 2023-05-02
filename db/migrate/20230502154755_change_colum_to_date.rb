class ChangeColumToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :reviews, :date, :date
  end
end
