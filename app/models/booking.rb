class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :subscription

  validates :total_price, presence: true
end
