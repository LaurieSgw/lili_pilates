class ChangeNameColumnSub < ActiveRecord::Migration[7.0]
  def change
    remove_columns :subscriptions, :type
    add_column :subscriptions, :sub_type, :string
  end
end
