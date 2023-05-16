class AddReferenceToSubscription < ActiveRecord::Migration[7.0]
  def change
    add_reference :subscriptions, :course, foreign_key: true
  end
end
