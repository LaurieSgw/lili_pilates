class RemoveColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_columns :bookings, :subscription_type
  end
end
