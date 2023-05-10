class AddColumnsToSub < ActiveRecord::Migration[7.0]
  def change
    add_column :subscriptions, :type, :string
    add_column :subscriptions, :price, :integer
  end
end
