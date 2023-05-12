class ChangeReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :course, foreign_key: true, index: false
    add_reference :bookings, :subscription, index: false
  end
end
