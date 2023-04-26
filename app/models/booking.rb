class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :subscription_type, :total_price, presence: true
end
